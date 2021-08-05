import 'package:flutter/material.dart';
import 'package:umamicocina/screens/mis_pedidosScreen.dart';
import 'package:umamicocina/widgets/widgets.dart';
import 'package:umamicocina/screens/screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    Switch(pos) {
      Case:
      0;
      return MisPedidosScreen();
      Case:
      1;
      return LoginScreen();
    }
  }

  _onSelectItem(int pos) {
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('productos Umami'),
      ),
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
                _onSelectItem(0);
                print(_onSelectItem(0));
              }),
          ListTile(
              title: Text('Iniciar Sesión'),
              leading: Icon(Icons.login),
              onTap: () {
                _onSelectItem(1);
                print(_onSelectItem(1));
              }),
        ],
      )),
      body: _getDrawerItemWidget(_selectDrawerItem),
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
        )));
  }
}
