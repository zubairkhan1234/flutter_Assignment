import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart";
import "package:flutterassignment/figmaAssignment01/styles/_colors.dart";
import "package:flutterassignment/figmaAssignment01/widgets/_offerCartWidget.dart";
import "package:flutterassignment/figmaAssignment01/widgets/_recommendedProducrCart.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 25, 10, 25),
      child: Column(
        children: [
          OfferCart(),
          RecommendedProductCart()
        ],
      ),
    ) ;
  }
}
