import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The questions will be displayed here',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'answer 1', onClick: () {}),
          AnswerButton(answerText: 'answer 2', onClick: () {}),
          AnswerButton(answerText: 'answer 3', onClick: () {}),
        ],
      ),
    );
  }
}
