const { Schema, model } = require('mongoose');

const UsuarioSchema = Schema({

    nombre: {
        type: String,
        required: true,
        
    },


    email: {
        type: String,
        required: true,
        unique: true
    },
    password: {
        type: String,
        required: true
    },
   

});

UsuarioSchema.method('toJson', function(){
    const {__v, _id, password, ...Object} = this.toObject();
    Object.uid = id;
    return Object;
})


module.exports = model('Usuario', UsuarioSchema );