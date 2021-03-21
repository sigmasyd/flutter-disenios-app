import 'package:diseniosapp/src/pages/avanzado_page.dart';
import 'package:diseniosapp/src/pages/basico_page.dart';
import 'package:diseniosapp/src/pages/medio_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context)=>BasicoPage(),
        'medio': (BuildContext context)=>MedioPage(),
        'avanzado': (BuildContext context)=>AvanzadoPage()
      },
    );
  }
}