import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/models/question_struct.dart';
// import 'package:quiz_app/questions/quiz_questions.dart';

//Widget that contains UI behind the appearing
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key, required this.onSelectAnswer, required this.questions});
  final void Function(String answer) onSelectAnswer;
  final List<QuizQuestion> questions;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen(questions);
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  List<QuizQuestion> questions;
  _QuestionsScreen(this.questions);
  var questionsIndex = 0;
  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      questionsIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionsIndex];
    return Container(
      margin: const EdgeInsets.all(75),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(26, 60, 93, 1),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  ...currentQuestion.shuffleAnswers().map((choices) {
                    return AnswerButton(
                      answerText: choices,
                      onTap: () {
                        answerQuestion(choices);
                      },
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
