// import 'package:flutter/material.dart';
// import 'package:quiz_app/login_page/database_connectivity.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _databaseHelper = DatabaseHelper();

//   void _login() async {
//     final username = _usernameController.text;
//     final password = _passwordController.text;

//     final user = await _databaseHelper.getUser(username);

//     if (user != null && user['password'] == password) {
//       // User exists and password matches
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Login Successful')));
//     } else {
//       // User does not exist or password does not match
//       ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('User not found, please create an account')));
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => RegisterPage()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(labelText: 'Username'),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _login,
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RegisterPage extends StatefulWidget {
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _databaseHelper = DatabaseHelper();

//   void _register() async {
//     final username = _usernameController.text;
//     final password = _passwordController.text;

//     await _databaseHelper
//         .insertUser({'username': username, 'password': password});

//     ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text('Account Created Successfully')));
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Register')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(labelText: 'Username'),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _register,
//               child: Text('Create Account'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
