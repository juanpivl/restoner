import 'package:flutter/material.dart';
import 'package:restoner/screen/Inicio/inicio.dart';
import 'package:restoner/screen/Inicio/login.dart';
import 'package:restoner/screen/Inicio/registro.dart';
import 'package:restoner/screen/Negocios/negocios_cercanos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restoner',
      home: Negocios_Cercanos(),
    );
  }
}
