import 'package:flutter/material.dart';
import 'package:restoner/constants.dart';

Row Categorias() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 10,
      ),
      Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColorbuttom,
            ),
            onPressed: () {},
            child: Icon(
              Icons.breakfast_dining_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColorbuttom,
            ),
            onPressed: () {},
            child: Icon(
              Icons.menu_book_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColorbuttom,
            ),
            onPressed: () {},
            child: Icon(
              Icons.dinner_dining,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColorbuttom,
            ),
            onPressed: () {},
            child: Icon(
              Icons.av_timer_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColorbuttom,
            ),
            onPressed: () {},
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}
