import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: data['correct_answer'] == data['user_answer']
                        ? const Color.fromARGB(255, 7, 116, 206)
                        : Colors.red,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 10, bottom: 45),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 214, 193, 250),
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 51, 184, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
