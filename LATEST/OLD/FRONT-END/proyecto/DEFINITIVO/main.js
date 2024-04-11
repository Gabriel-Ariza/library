const listaEstudiantes = [];
const listaCursos = [];
const listaHorarios = [];


class Estudiante {
    constructor(codigo, nombre, carrera) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.carrera = carrera;
    }

    agregar() {
        listaEstudiantes.push(this);
    }

    eliminar(codigoEstudiante) {
        listaEstudiantes = listaEstudiantes.filter(estudiante => estudiante.codigo !== codigoEstudiante);
    }

    modificar(codigoEstudiante, nuevoNombre, nuevaCarrera) {
        listaEstudiantes.forEach(estudiante => {
            if (estudiante.codigo === codigoEstudiante) {
                estudiante.nombre = nuevoNombre;
                estudiante.carrera = nuevaCarrera;
            }
        });
    }
}


class Curso {
    constructor(codigo, nombre, especialidad, duracion, creditos) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.especialidad = especialidad;
        this.duracion = duracion;
        this.creditos = creditos;
    }

    agregar() {
        listaCursos.push(this);
    }

    eliminar(codigoCurso) {
        listaCursos = listaCursos.filter(curso => curso.codigo !== codigoCurso);
    }

    modificar(codigoCurso, nuevoNombre, nuevaEspecialidad, nuevaDuracion, nuevosCreditos) {
        listaCursos.forEach(curso => {
            if (curso.codigo === codigoCurso) {
                curso.nombre = nuevoNombre;
                curso.especialidad = nuevaEspecialidad;
                curso.duracion = nuevaDuracion;
                curso.creditos = nuevosCreditos;
            }
        });
    }
}



// Clase Horario
class Horario {
    constructor(codigoCurso, codigoEstudiante, dia, horaIni, horaFin) {
        this.codigoCurso = codigoCurso;
        this.codigoEstudiante = codigoEstudiante;
        this.dia = dia;
        this.horaIni = horaIni;
        this.horaFin = horaFin;
    }

    agregar() {
        listaHorarios.push(this);
    }

    eliminar(codigoCurso, codigoEstudiante) {
        listaHorarios = listaHorarios.filter(horario => 
            horario.codigoCurso !== codigoCurso || horario.codigoEstudiante !== codigoEstudiante
        );
    }

    modificar(codigoCurso, codigoEstudiante, nuevoDia, nuevaHoraIni, nuevaHoraFin) {
        listaHorarios.forEach(horario => {
            if (horario.codigoCurso === codigoCurso && horario.codigoEstudiante === codigoEstudiante) {
                horario.dia = nuevoDia;
                horario.horaIni = nuevaHoraIni;
                horario.horaFin = nuevaHoraFin;
            }
        });
    }
}





// Crear estudiantes
const estudiante1 = new Estudiante(1, "Juan Pérez", "Ing. Informática");
const estudiante2 = new Estudiante(2, "María López", "Lic. Matemáticas");
estudiante1.agregar();
estudiante2.agregar();
console.log(listaEstudiantes)

// Crear cursos
const curso1 = new Curso(101, "Programación Avanzada", "Informática", 12, 4);
const curso2 = new Curso(102, "Cálculo I", "Matemáticas", 14, 3);
curso1.agregar();
curso2.agregar();
console.log(listaCursos)

// Crear horarios
const horario1 = new Horario(101, 1, "Lunes", "09:00", "11:00");
const horario2 = new Horario(101, 2, "Miércoles", "14:00", "16:00");
horario1.agregar();
horario2.agregar();
console.log(listaHorarios)

// Modificar un estudiante
estudiante1.modificar(1, "Juan Pérez Gómez", "Ing. Informática con Énfasis en Software");
console.log(listaEstudiantes)

// Eliminar un curso
curso1.eliminar(101);
console.log(listaCursos)


// Modificar un horario
horario2.modificar(101, 2, "Miércoles", "14:30", "16:30");
console.log(listaHorarios)