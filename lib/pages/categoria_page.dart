import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marsey_nails/widgets/card_generator_widget.dart';

class CategoriaPage extends StatelessWidget {
  final String categoria;

  CategoriaPage(this.categoria);

  //TO DO: debe hacerse una funcion para poder seleccionar la categoria de fotos
  //Una 

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
                WidgetCard(imagen: 'acrilicas', texto: categoria ,colorText: Colors.white,)
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
