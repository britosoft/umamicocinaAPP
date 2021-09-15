import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umamicocina/screens/asking_screen.dart';
import 'package:umamicocina/screens/checoutPedido_Screen.dart';
import 'package:umamicocina/screens/loading_screen.dart';
import 'package:umamicocina/screens/mis_pedidosScreen.dart';
import 'package:umamicocina/screens/order_send.dart';
import 'package:umamicocina/screens/product_screen.dart';
import 'package:umamicocina/screens/screen.dart';
import 'package:umamicocina/screens/formaDePago_screen.dart';
import 'package:umamicocina/screens/send_order_screen.dart';
import 'package:umamicocina/services/auth_services.dart';
import 'package:umamicocina/widgets/manager_producto_screen.dart';
import 'package:umamicocina/widgets/widgets.dart';
import 'package:umamicocina/widgets/custom_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ruta Umami ',
        initialRoute: 'loading',
        routes: {
          'login': (_) => LoginPage(),
          'home': (_) => HomeScreen(),
          'register': (_) => RegisterPage(),
          'product': (_) => MyProduct(),
          'details': (_) => DetailsScreen(),
          'pedidos': (_) => MisPedidosScreen(),
          'asking': (_) => Asking_Screen(),
          'checout': (_) => checoutPedido_Screen(),
          'formaDePago': (_) => Metodo_Pago(),
          'sendOrder': (_) => Send_order(),
          'managerproduct': (_) => Manager_productScreen(),
          'addproduct': (_) => AddProduct(),
          'loading': (_) => loading(),
          'send': (_) => Send()
        },
        theme: ThemeData.light()
            .copyWith(appBarTheme: AppBarTheme(color: Colors.green)),
      ),
    );
    //theme: ThemeData.light().copyWith(
    //appBarTheme: AppBarTheme(color: Colors.green)),
  }
}
