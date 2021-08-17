import 'package:flutter/material.dart';

class Radio extends StatefulWidget {
  Radio({Key? key}) : super(key: key);

  @override
  _RadioState createState() => _RadioState();
}

class _RadioState extends State<Radio> {
  bool _efectivo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: []),
    ));
  }
}
