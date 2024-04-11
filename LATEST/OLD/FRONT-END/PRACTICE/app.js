

import Tarea from './tareas.js';
import Proyecto from './proyectos.js';

// Crear una nueva tarea
const tarea1 = new Tarea(1, 'Tarea 1', 'Descripción de la tarea 1', 'Responsable 1', 'Por hacer');

// Crear un nuevo proyecto
const proyecto1 = new Proyecto(1, 'Proyecto 1', 'Descripción del proyecto 1');

// Agregar la tarea al proyecto
proyecto1.agregarTarea(tarea1);

// Cambiar el responsable de la tarea
tarea1.cambiarResponsable('Nuevo Responsable');

// Marcar la tarea como terminada
tarea1.terminar();

// Listar las tareas en el proyecto
const tareasEnProyecto = proyecto1.listarTareas();
console.log('Tareas en el proyecto 1:');
tareasEnProyecto.forEach(tarea => {
  console.log(`Código: ${tarea.codigo}, Nombre: ${tarea.nombre}, Responsable: ${tarea.responsable}, Estado: ${tarea.estado}`);
});

