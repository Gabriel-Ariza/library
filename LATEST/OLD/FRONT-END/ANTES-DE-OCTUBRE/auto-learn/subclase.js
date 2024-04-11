/* CLASES */

class Player{
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
    set nombre(nuevoNombre){
        this._nombre = nuevoNombre;
    }
}
let player1 = new Player('Mario', 'rojo');
let player2 = new Player('Luigi', 'verde');


// CREANDO SUBCLASE

class Pet extends Player {
    //crea un atributo estatico solo para la clase que no se puede heredar
    static hola = 'hola mamifero';

    //extendemos los parametros de la clase padre + nuevos
    constructor(nombre, colorSombrero, colorPiel){
        super(nombre, colorSombrero);
        //extendemos parametros de la clase padre con super
        this._colorPiel = colorPiel;
    }

    //el get y set se heredan del padre, pero al nuevo se debe crear
    get consultar_colorPiel(){
        return this._colorPiel;
    }
    set cambiar_colorPiel(colorPiel){
        this._colorPiel = colorPiel;
    }

    comer() {
        return `Yo como manzanas`
    }
    saludar(){
        return super.saludar() + 'Ademas soy una mascota';
    }
}

let pet1 = new Pet('Yoshi', 'Invisible', 'Verde')
console.log(pet1.comer())
console.log(pet1.saludar())






