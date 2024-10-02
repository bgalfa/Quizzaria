import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_struct.dart';
import 'package:quiz_app/models/quiz_summary_struct.dart';

// ignore: must_be_immutable
class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.onRestart,
      required this.chosenAnswer,
      required this.questions});
  final List<String> chosenAnswer;
  final List<QuizQuestion> questions;
  final void Function() onRestart;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i + 1,
        'question_text': questions[i].question,
        'chosenAnswer': chosenAnswer[i],
        'correctAnswer': questions[i].choices[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> summary = getSummary();
    var totalQuestions = chosenAnswer.length;
    var correctAnswers = summary.where(
      (lst) {
        return lst['chosenAnswer'] == lst['correctAnswer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Result Screen",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              "You answered $correctAnswers out of $totalQuestions questions correctly!",
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 7, 131, 13),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            QuizSummary(summary: summary),
            const SizedBox(
              height: 25,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 3, 107, 192),
              ),
              icon: const Icon(Icons.refresh),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
