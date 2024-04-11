/* CONSTRUCTORES, SIMPLIFICAN A LA HORA DE CREAR OBJETOS*/

function Disco(artista, album, year){
    this.artista = artista;
    this.album = album;
    this.year = year;
}
let disco1 = new Disco('Eladio', 'Sen2Kbron', 2021);
console.log(disco1)


/* CLASES */

class Jugador{
    constructor(nombre, colorSombrero){
        this._nombre = nombre;
        this._colorSombrero = colorSombrero;
    }
    //METODOS DE LA CLASE
    saltar(){}
    correr(){}
    saludar(){
        return `Hola soy ${this._nombre} mi sombrero es ${this._colorSombrero}`
    }

    get nombre(){
        return this._nombre;
    }
    set nombre(valor){
        this._nombre = valor;
    }
}
let jugador1 = new Jugador('Mario', 'rojo');
let jugador2 = new Jugador('Luigi', 'verde');
console.log(jugador1, "\n",jugador2)

console.log(jugador1.nombre)
jugador1.nombre = 'Alberto';
console.log(jugador1.nombre)