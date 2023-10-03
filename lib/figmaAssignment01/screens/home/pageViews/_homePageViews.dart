import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/screens/home/_homeDealScreen.dart';
import 'package:flutterassignment/figmaAssignment01/screens/home/_homeScreen.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  PageController pageController = PageController();
  late List pages;
  int screensIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      pages = [ HomeScreen(pageController: pageController),HomeDealScreen()];
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return WillPopScope(child: pages[index], onWillPop: () async {
          setState(() {
            pageController.jumpToPage(0) ;
          });
          return true;
        },
        );

      },
    );
  }
}
