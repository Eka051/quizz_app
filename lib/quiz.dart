import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 69, 37, 124),
                  Color.fromARGB(255, 63, 30, 154)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: activeScreen)),
      debugShowCheckedModeBanner: false,
    );
  }
}
