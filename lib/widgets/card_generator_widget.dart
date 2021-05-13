import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  const WidgetCard({@required this.texto, @required this.imagen, this.colorText});

  final String texto, imagen;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.softLight),
            image: AssetImage("assets/images/$imagen.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(texto,
                style: TextStyle(
                    color: colorText,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );
  }
}

