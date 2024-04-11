
class Proyecto {
    constructor(codigo, nombre, descripcion) {
    this.codigo = codigo;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.listaTareas = [];
    }

    agregarTarea(tarea) {
        this.listaTareas.push(tarea);
    }

    eliminarTarea(codigoTarea) {
        this.listaTareas = this.listaTareas.filter(tarea => tarea.codigo !== codigoTarea);
    }

    listarTareas() {
        return this.listaTareas;
    }
}

export default Proyecto;
