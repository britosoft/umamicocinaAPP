import 'package:flutter/material.dart';
import 'package:umamicocina/screens/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta Umami ',
      initialRoute: 'product',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
        'register': (_) => RegisterScreen(),
        'product': (_) => ProductScreen(),
        'details': (_) => DetailsScreen(),
      },
      //theme: ThemeData.light().copyWith(
      //appBarTheme: AppBarTheme(color: Colors.green)),
    );
  }
}
