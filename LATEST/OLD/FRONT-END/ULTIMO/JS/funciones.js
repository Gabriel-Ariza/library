const pi = 3.14;


export function area(radio) {
    return pi * radio**2;
}


const elemento = document.getElementById('yuca')
let hijos = elemento.childElementCount
//muestra la cantidad de hijos que tiene un elemento

let hijos_names = elemento.children //[1] devuelve el hijo 2
//devuelve a los hijos en un arrive con su tipo de etiqueta

let primer_hijo = elemento.firstElementChild
let ultimo_hijo = elemento.lastElementChild