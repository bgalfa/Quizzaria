import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/choose_category.dart';
import 'package:quiz_app/models/question_struct.dart';
import 'package:quiz_app/questions/more_qs.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
// import 'package:quiz_app/questions/quiz_questions.dart';

//The main file that conains the Quiz App Widgets
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];
  late String chosenGenre;
  late List<QuizQuestion> questions;

  void gotoQuizMenu() {
    setState(() {
      activeScreen = 'quiz-menu';
    });
  }

  void onSelectCategory(String category) {
    Set<QuizQuestion> questionSet = {};
    setState(() {
      chosenGenre = category;
      int questionIndex;
      while (questionSet.length < 15) {
        questionIndex = Random().nextInt(15);
        questionSet.add(catalogue[questionsMenu[chosenGenre]]![questionIndex]);
      }

      questions = questionSet.toList();
      startQuiz();
    });
  }

  void startQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  void chosenAnswer(String answer) {
    //The selected answer is added to the 'selectAnswers' List
    selectedAnswers.add(answer);
    if (selectedAnswers.length == 15) {
      //If all questions are answered, goto Results Screen
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(gotoQuizMenu);
    if (activeScreen == 'quiz-menu') {
      screenWidget = Category(
        onSelectCategory: onSelectCategory,
      );
    }
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chosenAnswer,
        questions: questions,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        questions: questions,
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 235, 235, 238),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 249, 249, 251)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
