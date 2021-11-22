import 'package:flutter/material.dart';
import 'package:restoner/components/datos.dart';

class CartRestaurant extends StatelessWidget {
  final String imagePath = "assets/images/restaurant.jpg";

  late final List<Datos> datos;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage(imagePath), fit: BoxFit.cover),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      FlatButton(
                        child: Text(
                          'CERRADO',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Restaurante',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Menu, Polloteria, Chifa",
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          FlatButton(
                            child: Icon(Icons.exit_to_app),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Icon(Icons.add_shopping_cart),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
