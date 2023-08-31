import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(GlobalColors.blueDark)),
          child: Column(
            children: [
              Text("Your holiday shopping delivered to Screen one", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color:Color(GlobalColors.white), fontFamily: 'Raleway')),
            ],
          )),
    );
  }
}
