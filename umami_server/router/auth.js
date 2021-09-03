// path api login

const {  Router} = require('express');
const { check } = require('express-validator');
const { crearUsuario, login, renewToken } = require('../controllers/auth');
const { validatrJWT } = require('../middlewares/validar-jwt');
const { validarCampos } = require('../middlewares/validar_campos');

const router = Router();

router.post('/new',[
    check('email', 'El email es obligatorio').not().isEmpty(),
    check('email', 'Este no es un email válido').isEmail(),
    check('password', 'El password es obligatorio').not().isEmpty(),
    validarCampos
], crearUsuario);

//validar email y password del login

router.post('/', [ check('email', 'El email no puede ir bacio').not().isEmpty(),
check('email', 'este no es un email válido').isEmail(),
check('password', 'la contraseña no puede ir bacio').not().isEmpty(),
], login)
//validar el jwt

router.get('/renew', validatrJWT, renewToken );

module.exports = router;