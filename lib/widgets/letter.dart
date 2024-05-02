import 'package:flutter/material.dart';

Widget letter(String char, bool hidden) {
  return Container(
    height: 50,
    width: 40,
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.deepOrange,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Visibility(
      visible: hidden,
      child: Text(
        char,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
    ),
  );
}