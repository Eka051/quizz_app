import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(105, 255, 255, 255),
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        const SizedBox(height: 40),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(color: Colors.deepPurpleAccent),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          icon: Icon(Icons.arrow_right_alt, color: Colors.white),
          label: Text(
            'Start Quiz',
          ),
        ),
      ],
    ));
  }
}
