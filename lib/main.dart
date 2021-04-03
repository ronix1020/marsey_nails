import 'package:flutter/material.dart';
import 'package:marsey_nails/pages/inicio_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marsey Nails',
      initialRoute: '/',
      routes: {
        '/' : (context) => InicioPage(),
      },
    );
  }
}