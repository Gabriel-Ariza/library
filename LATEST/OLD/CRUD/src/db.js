
import mongoose from "mongoose";

export const connectDB = async() => {
    try {
        await mongoose.connect('mongodb://localhost/merdb');
        console.log('>> Base de Datos conectada :')
    } catch (error) {
        console.log(error)
    }
}