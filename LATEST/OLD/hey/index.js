const express = require('express');
const path = require('path');
const db = require('./db');


const app = express();

const port = process.env.PORT || 5000;

app.use(express.json());
app.use(express.urlencoded({extended: false}));

app.use('/public',express.static(path.join(__dirname,'./public')));

const pagPrin = require('./routes/pagina.principal');


app.use('/',pagPrin);










app.listen(port, (req,res) => {
    console.log(`Servidor en puerto ${port}`);
})