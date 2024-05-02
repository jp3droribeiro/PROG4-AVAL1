import 'package:flutter/material.dart';
import './main_page.dart';

class HangmanApp extends StatelessWidget {
  const HangmanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // tira a etiqueta de debug
      home: MainPage(),
    );
  }
}