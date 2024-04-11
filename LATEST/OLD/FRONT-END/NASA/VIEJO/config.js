// Definir la clave de API de la NASA
const apiKey = "aFRerxhaYWU73K4bOS2HrDdvfWrUsfkV885ygmZH";


function obtenerDatosDeLaNASA() {

    var solicitud = new XMLHttpRequest();
    let url = `https://api.nasa.gov/mars-photos/api/v1/missions/mars2022?key=${apiKey}`;
    
    solicitud.open('GET', url, true);

    solicitud.onload = function() {
        if (solicitud.status >= 200 && solicitud.status < 300) {
            let respuesta = JSON.parse(solicitud.responseText);
            console.log(respuesta);
        } else {
            console.error('Error en la solicitud a la API de la NASA: '+
            solicitud.status + ' - \n' + solicitud.statusText);
        }
    };

    solicitud.onerror = function() {
        console.error('Error de red al intentar acceder a la API de la NASA.');
    };
    solicitud.send();
}

obtenerDatosDeLaNASA();
