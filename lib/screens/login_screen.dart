import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umamicocina/widgets/bnt_ingresar.dart';
import 'package:umamicocina/widgets/custom_input.dart';
import 'package:umamicocina/widgets/custom_labels.dart';
import 'package:umamicocina/widgets/custom_logo.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                logo(),
                _Form(),
                Labels(),
                SizedBox(
                  height: 70,
                ),
                Text('Términos y condiciones',
                    style: TextStyle(fontWeight: FontWeight.w200)),
              ])),
        ),
      ),
    );
  }
}

class logo extends StatelessWidget {
  const logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [Custom_logo()],
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
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      CustomInput(
        icon: Icons.mail_outline,
        placeholder: 'Corrreo',
        keyboardType: TextInputType.emailAddress,
        textController: emailCtrl,
      ),
      CustomInput(
        icon: Icons.lock_outline,
        placeholder: 'password',
        isPassword: true,
        textController: passCtrl,
      ),
      SizedBox(height: 10),
      btn_enviar(
          text: 'Ingresar',
          onPressed: () {
            print(emailCtrl.text);
            print(passCtrl.text);
          })
    ]));
  }
}

class Labels extends StatelessWidget {
  const Labels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [CustomLabels()]),
    );
  }
}
