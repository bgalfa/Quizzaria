import 'package:flutter/material.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({super.key, required this.summary});
  final List<Map<String, Object>> summary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map(
            (summaryList) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (summaryList['question_index']).toString(),
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                      width:
                          8), // Add some space between the index and the text
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align content to the left
                      children: [
                        Text(
                          summaryList['question_text'].toString(),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left, // Align text to the left
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          summaryList['chosenAnswer'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: summaryList['chosenAnswer'] ==
                                      summaryList['correctAnswer']
                                  ? Colors.green
                                  : Colors.red),
                          textAlign: TextAlign.left, // Align text to the left
                        ),
                        Text(
                          summaryList['correctAnswer'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: summaryList['chosenAnswer'] !=
                                      summaryList['correctAnswer']
                                  ? Colors.green
                                  : Colors.red),
                          textAlign: TextAlign.left, // Align text to the left
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
