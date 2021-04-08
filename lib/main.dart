import 'package:flutter/material.dart';
import 'package:marsey_nails/pages/inicio_page.dart';
import 'package:marsey_nails/pages/tuto_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marsey Nails',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/'       : (context) => TutoPage(),
        'inicio'  : ( _ ) => InicioPage()
      },
    );
  }
}