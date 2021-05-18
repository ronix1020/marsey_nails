import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marsey_nails/widgets/card_generator_widget.dart';
import 'package:marsey_nails/widgets/card_generator_widget_products.dart';

class CategoriaPage extends StatelessWidget {
  final String categoria;

  CategoriaPage(this.categoria);

  final List<Map<String, String>> listaServicios = [
    {"nombreServicio": "Arte 1", "image": "acrilicas"},
    {"nombreServicio": "arte 2", "image": "acrilicas"},
    {"nombreServicio": "arte 3", "image": "acrilicas"},
    {"nombreServicio": "arte 4", "image": "acrilicas"}
  ];

  //TO DO: debe hacerse una funcion para poder seleccionar la categoria de fotos
  //Una

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Text(categoria),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          // Construimos la lista de los servicios
          ListView.builder(
            itemBuilder: (context, index) {
              return WidgetProducts(
                //enviamos la lista al widget card que generamos
                imagen: listaServicios[index]['image'],
                titulo: listaServicios[index]['nombreServicio'],
                descripcion: 'Esta es una breve descripcion',
                precio: 19.99,
                colorTitulo: Colors.purple[400]
              );
            },
            itemCount: listaServicios.length,
            scrollDirection: Axis.vertical,
          ),
        ],
      ),
    );
  }
}
