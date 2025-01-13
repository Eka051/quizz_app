import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered have a X out of Y questions correctly!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Restart Quiz',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ),
    );
  }
}
