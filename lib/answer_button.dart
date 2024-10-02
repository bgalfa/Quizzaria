import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            side: const BorderSide(color: Colors.blue, width: 1.0),
            minimumSize: const Size.fromHeight(50)),
        child: Text(
          answerText,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 4, 92, 163)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
