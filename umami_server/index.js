require('dotenv').config();
// DATA BASE CONFIG
require('./DataBase/config').dbConnection();


const express = require('express'); 
const app = express();

//lectura y parseo del body
 app.use( express.json() );

//mis rutas
app.use('/api/login', require('./router/auth'));


app.listen( 3000, (err) => {
if( err ) throw new Error(err);

console.log('servidor corriendo en el puerto ', 3000);


});