import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              _logo(),
              _Form(),
              _Labels(),
              Text('Términos y condiciones',
                  style: TextStyle(fontWeight: FontWeight.w200)),
            ])),
      ),
    );
  }
}

class _logo extends StatelessWidget {
  const _logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image.asset('assets/1.png'),
            //SizedBox(height: 5),
            Text('Login',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(children: [
        Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  )
                ]),
            child: TextField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                //obscureText:true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.green),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: 'Email')))
        //TODO: Crear boton
        // MaterialButton(
        //onPressed: () {},
        //)
      ]),
    );
  }
}

class _Labels extends StatelessWidget {
  const _Labels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text('¿Aún no tienes cuenta?',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.black54)),
        SizedBox(height: 10),
        Text('Crear una cuenta',
            style: TextStyle(
                color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold))
      ]),
    );
  }
}
