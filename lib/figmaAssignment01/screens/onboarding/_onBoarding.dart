import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
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
        body: SizedBox(
          width: 400,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: PageView(
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
                            currentIndex == 0
                                ? SvgPicture.asset(
                                    SvgIcons.dashLarge,
                                  )
                                : SvgPicture.asset(SvgIcons.dashSmall),
                            SvgPicture.asset(SvgIcons.dashSmall)
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
                            SvgPicture.asset(SvgIcons.dashSmall),
                            currentIndex == 1
                                ? SvgPicture.asset(SvgIcons.dashLarge)
                                : SvgPicture.asset(SvgIcons.dashSmall),
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
                ),
              ),
              SvgPicture.asset(SvgIcons.imageFallBack),
              SizedBox(
                width: 200,
                height: 100,
                child: ElevatedButton(
                    onPressed: () => print("clicked"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Get Started"),
                        SvgPicture.asset(SvgIcons.arrowRight, color: Color(GlobalColors.white),)

                      ],
                    )),
              )

                ],

          ),
        ));
  }
}
