import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 16, 3, 80),
        ),
        child: Text(
          answerText,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(200, 240, 219, 219)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
