
import mongoose, { mongo } from "mongoose";

mongoose.Schema ({
    username: {
        type: String
    },
    email: {
        type: String,
    },
    password: {
        type: String
    }
})