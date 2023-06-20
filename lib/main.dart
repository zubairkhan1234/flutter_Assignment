import 'package:flutter/material.dart';
import 'package:flutterassignment/login_screen.dart';
import 'package:flutterassignment/pallete.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor
      ),
      home: LoginScreen(),
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