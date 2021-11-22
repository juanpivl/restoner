import 'package:flutter/material.dart';
import 'package:restoner/components/CardRestaurant.dart';
import 'package:restoner/screen/shared/categorias.dart';
import 'package:restoner/screen/shared/myappbar.dart';

class Negocios_Cercanos extends StatelessWidget {
  const Negocios_Cercanos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Categorias(),
              ],
            ),
            CartRestaurant(),
          ],
        ),
      ),
    );
  }
}
