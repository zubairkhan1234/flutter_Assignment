import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/BottomNavigationBar/_bottom_bar.dart';
import 'package:flutterassignment/figmaAssignment01/screens/onboarding/_onBoarding.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _State();
}

class _State extends State<MyHomePage> {
  List screens = [
    Onboarding(),
    Text('fist2'),
    Text('fist3'),
    Text('fist4')
  ];
  int screensIndex = 0;

  ontapChangeScreen(index){
    print(index);
    setState(() {
      screensIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      appBar: AppBar(title: Text("data")),
      body:  screens[screensIndex],
      bottomNavigationBar: CustomBottomNavigation(ontapChangeScreen: (index) {
        setState(() {
          screensIndex =index;
        });
      }, index: screensIndex, ),
    );
  }
}
