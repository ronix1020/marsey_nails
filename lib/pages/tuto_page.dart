import 'package:flutter/material.dart';
import 'package:marsey_nails/size_config.dart';
import 'package:marsey_nails/widgets/body_tuto.dart';

class TutoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BodyTutoWidget()
    );
  }
}
