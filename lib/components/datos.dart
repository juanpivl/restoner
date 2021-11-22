import 'package:flutter/material.dart';

class Datos {
  final String nombre;
  final String estado;
  final Image imagen;
  final String categorias;

  Datos({
    required this.nombre,
    required this.estado,
    required this.imagen,
    required this.categorias,
  });

  final datos = List<Datos>.generate(
    5,
    (i) => Datos(
      nombre: 'Restaurant 1 $i',
      estado: 'Abierto $i',
      imagen: Image.asset('assets/images/restaurant1.jpg'),
      categorias: 'Desayuno,Comida,Cena',
    ),
  );
}
