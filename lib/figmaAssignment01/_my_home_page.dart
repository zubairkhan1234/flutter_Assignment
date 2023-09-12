import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/BottomNavigationBar/_bottom_bar.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
import 'package:flutterassignment/figmaAssignment01/screens/home/_homeScreen.dart';
import 'package:flutterassignment/figmaAssignment01/screens/onboarding/_onBoarding.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class _State extends State<MyHomePage> {
  List appBarWidgets = [
    AppBar(
      automaticallyImplyLeading: false,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          children: [
            Text(
              "Hello",
            )
          ],
        ),
      ),
      title: Text("Hey'Halal"),
      backgroundColor: GlobalColors.blueLight,
      actions: [
        Padding(
          padding: EdgeInsets.zero, // Padding ko zero set karein
          child: Stack(
            children: [
              IconButton(
                onPressed: () {
                  // Yahan aapka icon ke action ko daal sakte hain
                },
                icon: SvgPicture.asset(SvgIcons.shopIcon),
              ),
              // const CircleAvatar(child: Text("3"),)
            ],
          )

        ),
      ],
    ),
    AppBar(title: Text('Screen2')),
    AppBar(title: Text('Screen3')),
    AppBar(title: Text('Screen4')),
  ];
  List appBarTitle = [
    Text('Screen1'),
    Text('Screen2'),
    Text('Screen3'),
    Text('Screen4'),
  ];

  List screens = [HomeScreen(), Onboarding(), Text('fist3'), Text('fist4')];
  int screensIndex = 0;

  ontapChangeScreen(index) {
    print(index);
    setState(() {
      screensIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      appBar: appBarWidgets[screensIndex],
      // appBar: AppBar(title: appBarTitle[screensIndex]),
      body: screens[screensIndex],
      bottomNavigationBar: CustomBottomNavigation(
        ontapChangeScreen: (index) {
          setState(() {
            screensIndex = index;
          });
        },
        index: screensIndex,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _State();
}
