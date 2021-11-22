import 'package:flutter/material.dart';
import 'package:restoner/constants.dart';

AppBar MyAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'RESTONER',
      style: TextStyle(color: kPrimaryColorPink),
    ),
    actions: [
      Stack(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: kPrimaryColorPink,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.line_style,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
