import 'package:flutter/material.dart';
import 'package:umamicocina/widgets/bebidas_escreen.dart';
import 'package:umamicocina/widgets/ceviche_y_ensaladas_escreen.dart';
import 'package:umamicocina/widgets/coverPage_widget.dart';
import 'package:umamicocina/widgets/entradas_escreen.dart';
import 'package:umamicocina/widgets/entradas_miproducto.dart';
import 'package:umamicocina/widgets/platos_fuerte_escreen.dart';
import 'package:umamicocina/widgets/sandwich_escreen.dart';

class MyProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //TODO: Car product
          CoverPageProducto(),

          SizedBox(height: 5),
          Text('Mis Productos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Categoria_entradas_miProducto(),

          //listado horizontal
        ],
      )),
    ));
  }
}

class CoverPageProducto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    title:
    return Container(
        width: double.infinity,
        height: size.height * 0.3,
        child: Stack(
          children: [CoverPage(), IconSearch(), IconBack()],
        ));
  }
}

class IconSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.search_outlined, color: Colors.white),
          ],
        ));
  }
}

class IconBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.white),
          )
        ],
      ),
    );
  }
}
