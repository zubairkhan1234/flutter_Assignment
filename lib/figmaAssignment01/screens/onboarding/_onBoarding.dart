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
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.blueLight,
        body: SafeArea(
          child: Container(
            width: 400,
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: PageView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Stack(
                                
                                children: [
                                  const Padding(
                                    padding:  EdgeInsets.only(right: 80),
                                    child:  Text(
                                        "Your holiday shopping delivered to Screen one",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: GlobalColors.white,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),

                                   Positioned(child: SvgPicture.asset(SvgIcons.house), bottom: 0, right: 90,)
                                ],
                              ),
                            ),
                            const Text(
                              "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
                              style: TextStyle(
                                  color: GlobalColors.greyDark,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),

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
                            ),

                            
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text("Your holiday shopping delivered to Screen one",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: GlobalColors.white,
                                  fontFamily: 'Manrope')),
                          Text(
                              "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1"),
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
                  width: 253,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const MyHomePage();
                            },
                          )),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Text("Get Started", style: TextStyle(color: GlobalColors.blueLight),),
                          Text("Get Started",
                              style: CustomTextStyle.buttonTextBlue),

                          SvgPicture.asset(
                            SvgIcons.arrowRight,
                            color: GlobalColors.blueLight,
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
