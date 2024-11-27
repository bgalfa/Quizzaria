import 'package:sqflite/sqflite.dart';
import 'main.dart'; // Import to access the global database variable

class QuizSummaryModel {
  final int id;
  final String quizCategory;
  final int score;
  late final DateTime dateTime;

  QuizSummaryModel({
    required this.id,
    required this.quizCategory,
    required this.score,
  }) {
    dateTime = DateTime.now();
  }

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'Date': dateTime.toIso8601String(),
      'Category': quizCategory,
      'Score': score,
    };
  }

  Future<void> insertSummary() async {
    await database.insert(
      'details',
      toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<QuizSummaryModel>> retrieveAllSummaries() async {
    final List<Map<String, dynamic>> maps = await database.query('details');

    return List.generate(maps.length, (i) {
      return QuizSummaryModel(
        id: maps[i]['id'],
        quizCategory: maps[i]['Category'],
        score: maps[i]['Score'],
      );
    });
  }
}
