import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/_my_home_page.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
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
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: PageView(
                        children: [
                          Column(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                    text:
                                        "Your holiday \nshopping \ndelivered to Screen \none",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: GlobalColors.white,
                                        fontFamily: 'Manrope')),
                                WidgetSpan(
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    child: SvgPicture.asset(
                                      SvgIcons.house,
                                    ),
                                  ),
                                ),
                                const TextSpan(
                                    text:
                                        "\nThere's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: GlobalColors.greyDark,
                                        fontFamily: 'Manrope')),
                              ]))
                            ],
                          ),
                          Column(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                    text:
                                        "Your holiday \nshopping \ndelivered to Screen \none",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: GlobalColors.white,
                                        fontFamily: 'Manrope')),
                                WidgetSpan(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                    child: SvgPicture.asset(
                                      SvgIcons.house,
                                    ),
                                  ),
                                ),
                                const TextSpan(
                                    text:
                                        "\nThere's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: GlobalColors.greyDark,
                                        fontFamily: 'Manrope')),
                              ]))
                            ],
                          ),
                        ],
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        currentIndex == 0
                            ? SvgPicture.asset(SvgIcons.dashLarge)
                            : SvgPicture.asset(SvgIcons.dashSmall),
                        const SizedBox(
                          width: 10,
                        ),
                        currentIndex == 1
                            ? SvgPicture.asset(SvgIcons.dashLarge)
                            : SvgPicture.asset(SvgIcons.dashSmall),
                      ],
                    )
                  ],
                ),
                SvgPicture.asset(SvgIcons.imageFallBack),
                SizedBox(
                  width: 253,
                  height: 70,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              GlobalColors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))),
                      onPressed: () =>
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const MyHomePage();
                            },
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Next",
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
        ));
  }
}
