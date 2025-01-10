import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(54, 8, 134, 1),
                  Color.fromRGBO(107, 8, 255, 16),
                ],
              ),
            ),
            child: const StartScreen())),
    debugShowCheckedModeBanner: false,
  ));
}
