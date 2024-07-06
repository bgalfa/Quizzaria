import 'package:flutter/material.dart';
import 'package:quiz_app/choose_category.dart';
import 'package:quiz_app/models/question_struct.dart';
import 'package:quiz_app/questions/more_qs.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'dart:math';
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
  var activeScreen = 'login-screen';
  List<String> selectedAnswers = [];
  late String chosenGenre;
  late List<QuizQuestion> quizQuestions;
  late List<QuizQuestion> questions;

  void gotoQuizMenu() {
    setState(() {
      activeScreen = 'quiz-menu';
    });
  }

  List<QuizQuestion> getQuestions() {
    questions = catalogue[questionsMenu[chosenGenre]]!;
    var random = Random();
    int max = 50;
    List<QuizQuestion> selectedQuestions = [];
    // Generate a list of 15 random integers between min (inclusive) and max (exclusive)
    int randomidx;
    for (int i = 0; i < 15; i++) {
      randomidx = random.nextInt(max);
      selectedQuestions.insert(i, questions[randomidx]);
    }
    return selectedQuestions;
  }

  void onSelectCategory(String category) {
    setState(() {
      chosenGenre = category;
      quizQuestions = getQuestions();
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

  // void onSuccesfulLogin() {
  //   setState(() {
  //     activeScreen = 'start-screen';
  //   });
  // }

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
        quizCategory: chosenGenre,
        onSelectAnswer: chosenAnswer,
        questions: quizQuestions,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        questions: quizQuestions,
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    // if (activeScreen == 'login-screen') {
    //   screenWidget = LoginScreen();
    // }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 4, 7, 50),
                Color.fromARGB(255, 8, 11, 51),
                Color.fromARGB(255, 8, 12, 62)
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
