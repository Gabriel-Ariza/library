const mysql = require('mysql2');


const connection = mysql.createConnection({
    host: 'localhost',
    user: 'administrator',
    password: 'adminrole3000',
    database: 'prueba'
});


connection.connect((err) => {
    if (err) {
        console.error('Error de conexión:', err);
        return;
    }
    console.log('Conexión a la base de datos MySQL exitosa');
});

module.exports = connection;
