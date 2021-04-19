import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Obtenemos las proporciones de altura segun pantalla
double getProportionateScreenHeight(double inputHeight){
  double screenHeight = SizeConfig.screenHeight;
  //812 es la altura de la pantalla que desea el disennador
  return (inputHeight / 812.0) * screenHeight;
}

//Obtenemos las proporciones de ancho segun pantalla
double getProportionateScreenWidth(double inputWidth){
  double screenWidth = SizeConfig.screenWidth;
  //375 es la anchura de pantalla segun el diseno
  return (inputWidth / 375.0) * screenWidth;
}