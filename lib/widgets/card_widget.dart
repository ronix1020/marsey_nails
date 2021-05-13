import 'dart:ui';

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color _textMoradoFuerte = Color.fromRGBO(136, 97, 214, 1);
  final Color _textBlanco = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _card("pedicura", "Pedicura", context),
        _card("manicura", "Manicura", context),
        _card("esmaltado", "Esmaltado", context),
        _card("acrilicas", "Acrílicas", context),
        _card("disenno_2d", "Diseño 2D y 3D", context)
      ],
    );
  }

  Widget _card(String imagen, String nombre, BuildContext context) {
    // final SnackBar snackBar = SnackBar(
    //   content: Text("Has presionado $nombre"),
    //   duration: Duration(seconds: 1),
    //   backgroundColor: _textMoradoFuerte,
    //   action: SnackBarAction(
    //     label: 'Aceptar',
    //     textColor: _textBlanco,
    //     onPressed: (){

    //     },
    //   ),
    // );

    return GestureDetector(
      onTap: () {
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.pushNamed(context, 'categoria',
            arguments: nombre);
      },
      child: Container(
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
            Text(nombre,
                style: TextStyle(
                    color: _textBlanco,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
