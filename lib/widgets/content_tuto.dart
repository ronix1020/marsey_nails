import 'package:flutter/material.dart';

import '../size_config.dart';

class TutoContent extends StatelessWidget {
  const TutoContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          'assets/images/logo_marsey.jpeg',
          width: getProportionateScreenWidth(70),
          fit: BoxFit.cover,
        ),
        Text(
          "Marsey's Nails",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: Colors.purple[600],
              fontWeight: FontWeight.bold),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(250),
          width: getProportionateScreenWidth(225),
        ),
        Spacer(flex: 2,),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.purple[400],
          ),
        ),
      ],
    );
  }
}
