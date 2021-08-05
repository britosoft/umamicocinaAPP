import 'package:flutter/material.dart';
import 'package:umamicocina/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //TODO: Car product
          CoverPage(),
          Categoria_entradas(),
          Categorias_Platos_fuertes(),
          Categoria_Ceviche_y_Ensalada(),
          Categoria_sandwich(),
          Categoria_bebidas()
          //listado horizontal
        ],
      )),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Ramón Brito'),
              accountEmail: Text('ramobrito105@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text('R', style: TextStyle(fontSize: 20)),
              )),
          ListTile(
              title: Text('Mis Pedidos'),
              leading: Icon(Icons.delivery_dining),
              onTap: () {
                Navigator.pushNamed(context, 'pedidos');
              }),
          ListTile(
              title: Text('Iniciar Sesión'),
              leading: Icon(Icons.login),
              onTap: () {
                Navigator.pushNamed(context, 'login');
                //Navigator.pop(context);
              }),
        ],
      )),
    );
  }
}

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('productos Umami'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
