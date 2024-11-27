import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:quiz_app/quiz.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

late Database database;

Future<void> initializeDatabase() async {
  // Initialize FFI for desktop support
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  // Initialize Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  database = await openDatabase(
    join(await getDatabasesPath(), 'quiz_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE details(id INTEGER PRIMARY KEY, Date TEXT, Category TEXT, Score INTEGER)',
      );
    },
    version: 1,
  );
}

void main() async {
  try {
    await initializeDatabase();
    runApp(const Quiz());
  } catch (e) {
    print('Database initialization error: $e');
  }
}
