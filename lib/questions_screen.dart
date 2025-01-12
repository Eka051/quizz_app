import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: currentQuestion.answers[0], onClick: () {}),
          AnswerButton(answerText: currentQuestion.answers[1], onClick: () {}),
          AnswerButton(answerText: currentQuestion.answers[2], onClick: () {}),
          AnswerButton(answerText: currentQuestion.answers[3], onClick: () {}),
        ],
      ),
    );
  }
}
