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
        ],
      ),
    );
  }
}
