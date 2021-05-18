import 'package:flutter/material.dart';

class WidgetProducts extends StatelessWidget {
  const WidgetProducts({
    @required this.titulo,
    @required this.imagen,
    @required this.precio,
    this.descripcion,
    this.colorDescripcion,
    this.colorTitulo,
  });

  final String titulo, descripcion, imagen;
  final double precio;
  final Color colorTitulo, colorDescripcion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 120.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple[400]),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: double.maxFinite,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage("assets/images/$imagen.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                      color: colorTitulo,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(descripcion),
                Text(
                  '\$'+precio.toString(),
                  style: TextStyle(
                    color: Colors.purple[400],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
