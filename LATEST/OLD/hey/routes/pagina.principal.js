const router = require('express').Router();
const path = require('path');

router.get('/', principio);


router.post('/prueba', (req,res) => {
    const {nombre,apellido} = req.body;
    
    console.log(`nombre,apellido -> ${nombre,apellido} `);
    res.redirect('/prueba2')
})

router.get('/prueba2', (req,res) => {
    res.sendFile(path.join(__dirname,'../public/pages/prueba2.html'));
})




function principio(req,res) {
    res.sendFile(path.join(__dirname,'../public/index.html'));
}

module.exports = router
