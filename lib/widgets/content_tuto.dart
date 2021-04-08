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
        CircleAvatar(
        
          radius: getProportionateScreenHeight(50),
          backgroundImage: AssetImage('assets/images/logo_marsey.jpeg'),
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
