import 'package:flutter/material.dart';
import 'package:umamicocina/screens/asking_screen.dart';
import 'package:umamicocina/screens/checoutPedido_Screen.dart';
import 'package:umamicocina/screens/mis_pedidosScreen.dart';
import 'package:umamicocina/screens/screen.dart';
import 'package:umamicocina/screens/formaDePago_screen.dart';
import 'package:umamicocina/screens/send_order_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta Umami ',
      initialRoute: 'home',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
        'register': (_) => RegisterScreen(),
        //'product': (_) => ProductScreen(),
        'details': (_) => DetailsScreen(),
        'pedidos': (_) => MisPedidosScreen(),
        'asking': (_) => Asking_Screen(),
        'checout': (_) => checoutPedido_Screen(),
        //'formaDePago': (_) => formaPago(),
        'sendOrder': (_) => Send_order()
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: AppBarTheme(color: Colors.green)),
    );
    //theme: ThemeData.light().copyWith(
    //appBarTheme: AppBarTheme(color: Colors.green)),
  }
}
