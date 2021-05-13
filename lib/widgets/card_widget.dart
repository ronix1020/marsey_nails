import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marsey_nails/widgets/card_generator_widget.dart';

class CardWidget extends StatelessWidget {
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
      child: WidgetCard(texto: nombre, imagen: imagen, colorText: _textBlanco),
    );
  }
}
