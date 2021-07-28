import 'package:flutter/material.dart';
import 'package:umamicocina/widgets/widgets.dart';

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

            //listado horizontal
            MovieSlider(),
          ],
        )));
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //backgroundColor: Colors.green,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        //centerTitle: true,
        // title: Text('Umami la ruta del sabor'),
        background: FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2019/09/07/19/02/spanish-paella-4459519_960_720.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}
