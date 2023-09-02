import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(GlobalColors.blackDark),
        body: PageView(
          children: [
            Column(
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(GlobalColors.white),
                        fontFamily: 'Manrope')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    currentIndex == 0 ? Icon(Icons.circle, size: 10, color: Color(GlobalColors.white)): Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),
                    Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),
                    Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white))
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(GlobalColors.white),
                        fontFamily: 'Manrope')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),
                    currentIndex == 1 ? Icon(Icons.circle, size: 10, color: Color(GlobalColors.white)): Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),
                    Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white))
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(GlobalColors.white),
                        fontFamily: 'Raleway')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),
                    Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),
                    currentIndex == 2 ? Icon(Icons.circle, size: 10, color: Color(GlobalColors.white)): Icon(Icons.circle_outlined, size: 10, color: Color(GlobalColors.white)),

                  ],
                )
              ],
            )
          ],
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
