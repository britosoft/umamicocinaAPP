import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:umamicocina/services/product_service.dart';
import 'package:umamicocina/widgets/widgets.dart';
import 'package:umamicocina/services/services.dart';
import 'package:umamicocina/models/models.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);

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
            SizedBox(height: 5),
            Text('Productos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text('Ramón Brito'),
                  accountEmail: Text('ramobrito105@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                      child: Text('R', style: TextStyle(fontSize: 20)))),
              ListTile(
                  title: Text('Mis Pedidos'),
                  leading: Icon(Icons.delivery_dining),
                  onTap: () {
                    Navigator.pushNamed(context, 'pedidos');
                  }),
              ListTile(
                  title: Text('Mis productos'),
                  leading: Icon(Icons.image),
                  onTap: () {
                    //productsService.selectedProduct =
                    // productsService.products[index].copy();
                    Navigator.pushNamed(context, 'product');
                    //Navigator.pop(context);
                  }),
              ListTile(
                  title: Text('Iniciar Sesión'),
                  leading: Icon(Icons.login),
                  onTap: () {
                    Navigator.pushNamed(context, 'login');
                    //Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
