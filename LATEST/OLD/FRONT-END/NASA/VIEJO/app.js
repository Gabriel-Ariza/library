
let connect = new Promise((resolve, reject) => {
    let a = 1+1
    //pasamos la promesa o lo que necesitamos
    if(a == 2) {
        resolve('éxito')
    } else {
        reject('Error')
    }
})

connect.then((message) => {
    console.log('Despues de obtener la promesa\n' + message)

}).catch((message) => {
    console.log('Si se rechaza la promesa\n' + message)
})