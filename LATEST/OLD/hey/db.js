const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'administrador',
    password: 'joseplata153',
    database: 'almacen'
});

connection.connect((err) => {
    if (err) {
        console.error('Error al conectar a la base de datos: ', err);
        return;
    }
    console.log('Conexión a la base de datos exitosa');
});

module.exports = connection;