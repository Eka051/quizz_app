import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 69, 37, 124),
                Color.fromARGB(255, 63, 30, 154)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: const StartScreen())),
    debugShowCheckedModeBanner: false,
  ));
}
