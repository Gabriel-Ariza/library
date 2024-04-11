let estudianteCreado = false;
let clases = [];

document.getElementById("generarHorario").addEventListener("click", function() {
    if (!estudianteCreado) {
        document.getElementById("output").innerText = "Primero debe agregar al estudiante al cual le desea dar una clase.";
    } else {
        const randomClase = getRandomClase();
        clases.push(randomClase);
        updateClasesList();
    }
});

document.getElementById("agregarEstudiante").addEventListener("click", function() {
    estudianteCreado = true;
    document.getElementById("output").innerText = "Estudiante creado. Puede generar clases ahora.";
});

function getRandomClase() {
    const clasesDisponibles = ["Matemáticas", "Ciencias", "Español", "Inglés", "Historia"];
    const randomIndex = Math.floor(Math.random() * clasesDisponibles.length);
    return clasesDisponibles[randomIndex] + ": " + (Math.floor(Math.random() * 5) + 1) + " horas";
}

function updateClasesList() {
    const clasesList = document.createElement("ul");
    for (let i = 0; i < clases.length; i++) {
        const claseItem = document.createElement("li");
        claseItem.textContent = clases[i];
        clasesList.appendChild(claseItem);
    }
    document.getElementById("output").appendChild(clasesList);
}