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
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    } else {
      screenWidget = StartScreen(switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 69, 37, 124),
                Color.fromARGB(255, 63, 30, 154)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: screenWidget),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
