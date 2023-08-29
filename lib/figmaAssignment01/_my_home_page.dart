import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/BottomNavigationBar/_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _State();
}

class _State extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("data")),
      body:  Center(child: Text("Body")),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
