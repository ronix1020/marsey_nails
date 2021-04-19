import 'package:flutter/material.dart';
import 'package:marsey_nails/widgets/card_widget.dart';

class InicioPage extends StatelessWidget {
  final Color _textColor = Color.fromRGBO(136, 97, 214, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: Builder(
                builder: (context) {
                  return IconButton(
                      icon: Icon(Icons.store, color: _textColor),
                      onPressed: () => Navigator.pushNamed(context, '/'));
                },
              ),
              title:
                  Text("Marsey's Nails", style: TextStyle(color: _textColor)),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: Center(
              child: Column(
                children: <Widget>[CardWidget()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
