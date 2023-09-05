import 'package:flutter/material.dart ';
import 'package:flutterassignment/figmaAssignment01/_my_home_page.dart';
import 'package:flutterassignment/figmaAssignment01/screens/onboarding/_onBoarding.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Manrope",
      ),
      home: const Onboarding(),
    );
  }
}
