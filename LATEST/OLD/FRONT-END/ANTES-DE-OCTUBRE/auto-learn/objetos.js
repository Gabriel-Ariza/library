
/* DO WHILE: ejecuta siempre una vez y las veces requeridas*/
let cont = 1;
do {
    console.log(cont+ "");
    cont++;

} while (cont <= 0)


/* OBJETOS */
let fruta = 'manzana';
let frutas_ = ['manzana', 'pera'];
let frutas = {
    familia: 'citricos',
    cantidad: 10,
    tipo: ['manzana', 'pera']
}
console.log(frutas)


/* EJEMPLOS DE OBJETOS Y COMO LEERLOS */
let usuario = {
    nombre: 'Maria',
    edad: 20,
    estudiante: true    
}
console.log(usuario.edad)

//AGREGANDO PROPIEDADES
usuario.carrera = 'Administracion';
console.log(usuario)

//ELIMINANDO PROPIEDADES
delete usuario.edad;
console.log(usuario);

//SABER SI UN OBJETO TIENE X PROPIEDAD
let consultando_sisben = usuario.hasOwnProperty('sisben')
console.log(consultando_sisben)

let user = {
    nombre: 'Maria',
    edad: 20,
    estudiante: true,
    idiomas: {
        nativo: 'español',
        extranjero: {
            ingles: 'avanzado',
            frances: 'medio',
            portugues: 'bajo'
        }
    }
}
console.log(user.idiomas['extranjero'].frances)
