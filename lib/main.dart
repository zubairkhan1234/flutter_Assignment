import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/firebase_options.dart';
import 'package:flutterassignment/login_screen.dart';
import 'package:flutterassignment/pallete.dart';
import 'package:flutterassignment/signUpScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor
      ),
      // home: LoginScreen(),
      home : SignUpScreen()
    );
  }
}

// class MyHomePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("flutter Demo")),
//       body: const Center(
//         child: Text('My Page!'),
//
//       ),
//     );
//   }
// }