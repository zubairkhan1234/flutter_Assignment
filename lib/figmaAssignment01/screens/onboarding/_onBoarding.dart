import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
import 'package:flutterassignment/figmaAssignment01/screens/onboarding/_onBoardingNext.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.blueLight,
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
                                 const TextSpan(
                                      text:
                                          "Your holiday shopping delivered to Screen one",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: GlobalColors.white,
                                          fontFamily: 'Manrope')),
                                      WidgetSpan(
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                          child:  SvgPicture.asset(
                                            SvgIcons.house,
                                          ),
                                        ),
                                      ),
                                     const TextSpan(
                                      text:
                                          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: GlobalColors.greyDark,
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
                                      const TextSpan(
                                          text:
                                          "Your holiday shopping delivered to Screen one",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: GlobalColors.white,
                                              fontFamily: 'Manrope')),
                                      WidgetSpan(
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                          child:  SvgPicture.asset(
                                            SvgIcons.house,
                                          ),
                                        ),
                                      ),
                                     const TextSpan(
                                          text:
                                          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: GlobalColors.greyDark,
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
                  SizedBox(
                    width: 253,
                    height: 70,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                GlobalColors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                        onPressed: () => Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return const OnboardingNext();
                              },
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                         const   Text("Next",
                                style: TextStyle(
                                    color: GlobalColors.blueLight,
                                    fontWeight: FontWeight.w600)),
                            SvgPicture.asset(
                              SvgIcons.arrowRight,
                              color: GlobalColors.blueLight,
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
