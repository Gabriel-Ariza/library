
let boton1 = document.getElementById("btn1")
let boton2 = document.getElementById("btn2")
let parrafo_respuesta = document.getElementById("sumarRespuestas")

let respuesta1 = document.getElementById("randomNumber1")
let respuesta2 = document.getElementById("randomNumber2")
let cartas = document.getElementById("parte2")


function hola() {
    let yuca = "hola"
}

/* if (respuesta1.textContent == "" && respuesta2.textContent == "") { */
    boton1.addEventListener('click', () => {

    let numAleatorio1 = Math.floor(Math.random() * 11) + 1;
    respuesta1.textContent = numAleatorio1;

    boton2.addEventListener('click', () => {
        let numAleatorio2 = Math.floor(Math.random() * 11) + 1;
        respuesta2.textContent = numAleatorio2; 

        let suma_numeros = numAleatorio1+numAleatorio2;

        if(suma_numeros in [21,13,8,5,3,2]) {
            parrafo_respuesta.innerHTML = `Enhorabuena! Tu número ${suma_numeros} es Fibonacci`;
            parte2.style.display = "grid";
        } else {
            parrafo_respuesta.innerHTML = `Sigue intentando! ${suma_numeros}`;
            parte2.style.display = "none";
        }
    })

    })
/* } */

function resetearJuego() {
    respuesta1.textContent = "";
    respuesta2.textContent = "";
    document.getElementById("sumarRespuestas").textContent = "";
    parte2.style.display = "none";
}


//document.getElementById("sumarRespuestas").innerHTML = `Enhorabuena! Tu número es Fibonacci`;





/* let contenedor_cartas = document.getElementById("parte2")
contenedor_cartas.style.display = "none"; */







/* document.getElementById("sumar-respuestas").innerHTML = `Enhorabuena! Tu número ${suma} es Fibonacci`; */
/* 
var btn1Habilitado = true;
var btn2Habilitado = true;
// Función para generar un número aleatorio entre 1 y 11
function generarNumeroAleatorio(idBoton) {
    if ((idBoton === 1 && btn1Habilitado) || (idBoton === 2 && btn2Habilitado)) {
        var numeroAleatorio = Math.floor(Math.random() * 11) + 1;
        document.getElementById("randomNumber" + idBoton).textContent = "" + numeroAleatorio;
        btn1Habilitado = idBoton === 1 ? false : btn1Habilitado;
        btn2Habilitado = idBoton === 2 ? false : btn2Habilitado;
        verificarSumaFibonacci();
    }
}

// Función para verificar si un número es de la secuencia de Fibonacci
function esFibonacci(numero) {
    var a = 0;
    var b = 1;
    while (b < numero) {
        var temp = b;
        b = a + b;
        a = temp;
    }
    return b === numero;
}

// Función para verificar la suma y mostrar el contenedor de cartas
function verificarSumaFibonacci() {
    var numeroAleatorio1 = parseInt(document.getElementById("randomNumber1").textContent.split(": ")[1]);
    var numeroAleatorio2 = parseInt(document.getElementById("randomNumber2").textContent.split(": ")[1]);
    var suma = numeroAleatorio1 + numeroAleatorio2;

    if (esFibonacci(suma)) {
        document.getElementById("contenedorCartas").style.display = "block";
    }

}

// Función para reiniciar el juego
function resetearJuego() {
    btn1Habilitado = true;
    btn2Habilitado = true;
    document.getElementById("randomNumber1").textContent = "";
    document.getElementById("randomNumber2").textContent = "";
    document.getElementById("contenedorCartas").style.display = "none";
} */