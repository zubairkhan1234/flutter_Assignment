import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart";
import "package:flutterassignment/figmaAssignment01/styles/_colors.dart";
import "package:flutterassignment/figmaAssignment01/widgets/_gridProducrCart.dart";
import "package:flutterassignment/figmaAssignment01/widgets/_offerCartWidget.dart";
import "package:flutterassignment/figmaAssignment01/widgets/_recommendedProducrCart.dart";

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      margin: const EdgeInsets.fromLTRB(10, 25, 10, 25),
      child: Column(
        children: [
          const GridProductCart(),
        ],
      ),
    ));
  }
}
