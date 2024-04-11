const express = require('express');
const path = require('path');
const db = require('./database.js');

const PORT = 3000;

const app = express();

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.status(200).send('Working on puerto 3000\n');
});

app.listen(PORT, () => {
    console.log('-----------------------------------------------')
    console.log(`Servidor lanzado en\nhttp://localhost:${PORT}/\n\n\n`);
});