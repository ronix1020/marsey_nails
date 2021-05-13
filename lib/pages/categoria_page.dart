import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoriaPage extends StatelessWidget {
  final String categoria;

  CategoriaPage(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(height: 100.0,),
                Text('Has seleccionado $categoria'),
                Text('Has seleccionado $categoria'),
                Text('Has seleccionado $categoria'),
                Text('Has seleccionado $categoria'),
                Text('Has seleccionado $categoria'),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(categoria),
              leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.purpleAccent,), 
              onPressed: () => Navigator.of(context).pop()),
              backgroundColor: Colors.purple[200],
              elevation: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}
