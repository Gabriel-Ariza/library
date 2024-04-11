// document.write("<h1>PRUEBA HTML</h1>");
// var mayor_edad = 18
let contador = 1;
const div_escribir = document.getElementById("loco");

while(contador <= 100) {
    const span = document.createElement("span");
    span.textContent = contador + " ";

    if (contador % 2 === 0) {
        span.classList.add("par");
    } else {
        span.classList.add("impar");
    }

    div_escribir.appendChild(span);
    contador++;
}

// do {
//     document.write(contador + "");
//     contador++;
// } while(contador <= 0)

/* let dia = prompt('Ingrese el dia de la semana: ');
switch(dia) {
    case '1':
        document.write('<h1>El dia hoy es<br>Lunes<h1>');
    break;
    case '2':
        document.write('<h1>El dia hoy es<br>Martes<h1>');
    break;
    case '3':
        document.write('<h1>El dia hoy es<br>Miercoles<h1>');
    break;
    case '4':
        document.write('<h1>El dia hoy es<br>Jueves<h1>');
    break;
    case '5':
        document.write('<h1>El dia hoy es<br>Viernes<h1>');
    break;
    case '6':
        document.write('<h1>El dia hoy es<br>Sabado<h1>');
    break;
    case '7':
        document.write('<h1>El dia hoy es<br>Domingo<h1>');
    break;

    default:
        document.write('<h1>Dia desconocido<h1>')
} */