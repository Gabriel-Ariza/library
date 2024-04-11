
class Tarea {
    constructor(codigo, nombre, descripcion, responsable, estado) {
    this.codigo = codigo;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.responsable = responsable;
    this.estado = estado;
    }

    cambiarResponsable(nuevoResponsable) {
        this.responsable = nuevoResponsable;
    }

    terminar() {
        this.estado = 'Terminada';
    }
}

export default Tarea;
