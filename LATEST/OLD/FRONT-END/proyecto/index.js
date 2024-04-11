/* =========================  FUNCIONES DE LOS MODALES  ========================= */

function mostrar_modal_estudiante() {
    let modal = document.getElementById("modal_estudiante");
    modal.style.display = "flex"
}

function cerrar_modal_estudiante() {
    let modal = document.getElementById("modal_estudiante");
    modal.style.display = "none"
}

function guardar_modal_estudiante() {

    let nombre = document.getElementById("nom_estudent");
    let id = document.getElementById("id_estudent");
    let curso = document.getElementById("curse_estudent");

    console.log(nombre.value, id.value, curso.value)

    alert("datos guardados exitosamente")

    nombre.value = "";
    id.value = "";
    curso.value = "";
    cerrar_modal_estudiante()
}