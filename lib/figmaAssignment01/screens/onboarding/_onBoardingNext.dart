import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/_my_home_page.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class OnboardingNext extends StatefulWidget {
  const OnboardingNext({
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingNextState createState() => _OnboardingNextState();
}

class _OnboardingNextState extends State<OnboardingNext> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(GlobalColors.blueLight),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: PageView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "Your holiday shopping delivered to Screen one",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Color(GlobalColors.white),
                                          fontFamily: 'Manrope')),
                                  WidgetSpan(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                      child: SvgPicture.asset(
                                        SvgIcons.house,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(GlobalColors.greyDark),
                                          fontFamily: 'Manrope')),
                                ])),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  currentIndex == 0
                                      ? Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: SvgPicture.asset(
                                            SvgIcons.dashLarge,
                                          ),
                                        )
                                      : SvgPicture.asset(SvgIcons.dashSmall),
                                  SvgPicture.asset(SvgIcons.dashSmall)
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "Your holiday shopping delivered to Screen one",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Color(GlobalColors.white),
                                          fontFamily: 'Manrope')),
                                  WidgetSpan(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                      child: SvgPicture.asset(
                                        SvgIcons.house,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(GlobalColors.greyDark),
                                          fontFamily: 'Manrope')),
                                ])),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(SvgIcons.dashSmall),
                                  ),
                                  currentIndex == 1
                                      ? SvgPicture.asset(SvgIcons.dashLarge)
                                      : SvgPicture.asset(SvgIcons.dashSmall),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  SvgPicture.asset(SvgIcons.imageFallBack),
                  Container(
                    width: 253,
                    height: 70,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(GlobalColors.white)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                        onPressed: () => Navigator.push(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return const MyHomePage();
                              },
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Get Started",
                                style: TextStyle(
                                    color: Color(GlobalColors.blueLight),
                                    fontWeight: FontWeight.w600)),
                            SvgPicture.asset(
                              SvgIcons.arrowRight,
                              color: Color(GlobalColors.blueLight),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
