import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/BottomNavigationBar/_bottom_bar.dart';
import 'package:flutterassignment/figmaAssignment01/screens/home/_homeScreen.dart';
import 'package:flutterassignment/figmaAssignment01/screens/onboarding/_onBoarding.dart';

class _State extends State<MyHomePage> {
  List appBarWidgets = [
    AppBar(
      leading: SizedBox.shrink(),
      title: Text("Title"),
      actions: [
        Padding(
          padding: EdgeInsets.zero, // Padding ko zero set karein
          child: IconButton(
            onPressed: () {
              // Yahan aapka icon ke action ko daal sakte hain
            },
            icon: Icon(Icons.settings),
          ),
        ),
      ],
    )

    ,
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

  List screens = [
    HoneScreen(),
    Onboarding(),
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
      appBar: appBarWidgets[screensIndex],
      // appBar: AppBar(title: appBarTitle[screensIndex]),
      body:  screens[screensIndex],
      bottomNavigationBar: CustomBottomNavigation(ontapChangeScreen: (index) {
        setState(() {
          screensIndex =index;
        });
      }, index: screensIndex, ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _State();
}
