import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marsey_nails/widgets/card_generator_widget.dart';

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
        backgroundColor: Colors.purple[200],
        title: Text(categoria),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          // Construimos la lista de los servicios
          ListView.builder(
            itemBuilder: (context, index) {
              return WidgetCard(
                //enviamos la lista al widget card que generamos
                imagen: listaServicios[index]['image'],
                texto: listaServicios[index]['nombreServicio'],
                colorText: Colors.white,
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
