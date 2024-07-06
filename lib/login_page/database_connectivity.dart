// import 'dart:async';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseHelper {
//   static final DatabaseHelper _instance = DatabaseHelper._internal();
//   factory DatabaseHelper() => _instance;
//   DatabaseHelper._internal();

//   static late Database _database;

//   Future<Database> get database async {
//     //if (_database != null) return _database;
//     _database = await _initDatabase();
//     return _database;
//   }

//   _initDatabase() async {
//     String path = join(await getDatabasesPath(), 'user_database.db');
//     return await openDatabase(
//       path,
//       onCreate: (db, version) {
//         return db.execute(
//           "CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT, password TEXT)",
//         );
//       },
//       version: 1,
//     );
//   }

//   Future<void> insertUser(Map<String, dynamic> user) async {
//     final db = await database;
//     await db.insert(
//       'users',
//       user,
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<Map<String, dynamic>> getUser(String username) async {
//     final db = await database;
//     final List<Map<String, dynamic>> maps = await db.query(
//       'users',
//       where: "username = ?",
//       whereArgs: [username],
//     );
//     if (maps.isNotEmpty) {
//       return maps.first;
//     }
//     return {};
//   }
// }
