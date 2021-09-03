import 'package:flutter/material.dart';

class CustomLabels extends StatelessWidget {
  const CustomLabels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('¿Aún no tienes cuenta?',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54)),
          SizedBox(height: 10),
          Text('Crear una cuenta',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
