let boton1 = document.getElementById("boton1");
let boton2 = document.getElementById("boton2");
let parrafo_respuesta = document.getElementById("resultado");
let parte2 = document.getElementById("parte2");
let carta1 = document.querySelector(".carta1");
let carta2 = document.querySelector(".carta2");
let carta3 = document.querySelector(".carta3");

// Variables para rastrear si los botones ya se han hecho clic
let boton1Clicado = false;
let boton2Clicado = false;

// Función para generar un número aleatorio entre 1 y 11
function generarNumeroAleatorio() {
    return Math.floor(Math.random() * 11) + 1;
}

// Números de Fibonacci menores o iguales a 22
const numerosFibonacci = [1, 2, 3, 5, 8, 13, 21];

// Función para verificar si un número es un número de Fibonacci
function esNumeroFibonacci(numero) {
    return numerosFibonacci.includes(numero);
}

// Función para mostrar un mensaje en el párrafo de resultado
function mostrarMensaje(mensaje) {
    parrafo_respuesta.textContent = mensaje;
}

// Función para manejar el clic en el primer botón
function clicBoton1() {
    if (!boton1Clicado) {
        boton1Clicado = true;
        let numeroAleatorio1 = generarNumeroAleatorio();
        mostrarMensaje(`Número aleatorio generado por Botón 1: ${numeroAleatorio1}`);
        boton1.disabled = true;
        verificarSumaFibonacci(numeroAleatorio1);
    }
}

// Función para manejar el clic en el segundo botón
function clicBoton2() {
    if (!boton2Clicado) {
        boton2Clicado = true;
        let numeroAleatorio2 = generarNumeroAleatorio();
        mostrarMensaje(`Número aleatorio generado por Botón 2: ${numeroAleatorio2}`);
        boton2.disabled = true;
        verificarSumaFibonacci(numeroAleatorio2);
    }
}

// Función para verificar la suma y mostrar el resultado
function verificarSumaFibonacci(numeroAleatorio) {
    if (boton1Clicado && boton2Clicado) {
        let suma = parseInt(boton1.textContent) + parseInt(boton2.textContent);
        if (esNumeroFibonacci(suma)) {
            mostrarMensaje(`¡Felicitaciones! La suma ${suma} es un número de Fibonacci.`);
            mostrarCartas();
        } else {
            mostrarMensaje(`Sigue intentando con la suma ${suma}.`);
        }
    }
}

// Función para mostrar las cartas
function mostrarCartas() {
    parte2.style.display = "grid";
}

// Función para reiniciar el juego
function reiniciarJuego() {
    boton1Clicado = false;
    boton2Clicado = false;
    boton1.disabled = false;
    boton2.disabled = false;
    parrafo_respuesta.textContent = "";
    parte2.style.display = "none";
    carta1.style.display = "none";
    carta2.style.display = "none";
    carta3.style.display = "none";
}

// Agregar eventos clic a los botones
boton1.addEventListener('click', clicBoton1);
boton2.addEventListener('click', clicBoton2);

// Agregar evento clic al botón de reinicio
document.getElementById("botonReiniciar").addEventListener('click', reiniciarJuego);