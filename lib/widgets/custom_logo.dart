import 'package:flutter/material.dart';

class Custom_logo extends StatelessWidget {
  const Custom_logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Image.asset('assets/1.png'),
          SizedBox(height: 5),
          Text('Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
