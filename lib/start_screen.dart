import 'package:flutter/material.dart';

// The file is exported to 'quiz.dart' file => used for implementation of Start Quiz button.
class StartScreen extends StatelessWidget {
  final void Function() quizMenu;
  const StartScreen(this.quizMenu, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "This is BG's Quiz App",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.deepOrange,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Quizzaria",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 7, 131, 13)),
          ),
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            "assets/quiz-logo.png",
            width: 250,
            color: const Color.fromARGB(123, 207, 6, 6),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: quizMenu,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 178, 255, 89)),
            label: const Text("Go to Quiz"),
            icon: const Icon(
              Icons.wb_incandescent,
              color: Color.fromARGB(123, 207, 6, 6),
            ),
          ),
        ],
      ),
    );
  }
}
