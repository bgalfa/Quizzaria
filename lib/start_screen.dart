import 'package:flutter/material.dart';

// The file is exported to 'quiz.dart' file => used for implementation of Start Quiz button.
class StartScreen extends StatelessWidget {
  final void Function() quizMenu;
  final void Function() quizHistory;

  const StartScreen(this.quizMenu, this.quizHistory, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "To learn you have to listen. To improve, you have to take a Quiz.",
            textAlign: TextAlign.center, // Center text within its own widget
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 7, 131, 13),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Quizzaria",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 255, 64, 42)),
          ),
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            "assets/quiz-logo.png",
            width: 250,
            color: const Color.fromARGB(255, 3, 107, 192),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: quizMenu,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 64, 42)),
            label: const Text(
              "Go to Quiz",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            icon: const Icon(
              Icons.wb_incandescent,
              color: Color.fromARGB(255, 3, 107, 192),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: quizHistory,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 64, 42)),
            label: const Text(
              "Go to Past History",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            icon: const Icon(
              Icons.wb_incandescent,
              color: Color.fromARGB(255, 3, 107, 192),
            ),
          ),
        ],
      ),
    );
  }
}
