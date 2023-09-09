import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart";
import "package:flutterassignment/figmaAssignment01/styles/_colors.dart";

class HoneScreen extends StatefulWidget {
  const HoneScreen({super.key});

  @override
  State<HoneScreen> createState() => _HoneScreenState();
}

class _HoneScreenState extends State<HoneScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 123,
      margin:EdgeInsets.all(10),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 269,
              height: 123,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset((SvgIcons.imageFallBack)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get",
                            style: TextStyle(
                                fontSize: 26, color: Color(GlobalColors.white))),
                        Text("50% OFF",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(GlobalColors.white),
                                fontWeight: FontWeight.w900)),
                        Text("On first 03 orders",
                            style: TextStyle(
                                fontSize: 16, color: Color(GlobalColors.white)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 269,
              height: 123,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset((SvgIcons.imageFallBack)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get",
                            style: TextStyle(
                                fontSize: 26, color: Color(GlobalColors.white))),
                        Text("50% OFF",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(GlobalColors.white),
                                fontWeight: FontWeight.w900)),
                        Text("On first 03 orders",
                            style: TextStyle(
                                fontSize: 16, color: Color(GlobalColors.white)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 269,
              height: 123,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset((SvgIcons.imageFallBack)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get",
                            style: TextStyle(
                                fontSize: 26, color: Color(GlobalColors.white))),
                        Text("50% OFF",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(GlobalColors.white),
                                fontWeight: FontWeight.w900)),
                        Text("On first 03 orders",
                            style: TextStyle(
                                fontSize: 16, color: Color(GlobalColors.white)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 269,
              height: 123,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset((SvgIcons.imageFallBack)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get",
                            style: TextStyle(
                                fontSize: 26, color: Color(GlobalColors.white))),
                        Text("50% OFF",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(GlobalColors.white),
                                fontWeight: FontWeight.w900)),
                        Text("On first 03 orders",
                            style: TextStyle(
                                fontSize: 16, color: Color(GlobalColors.white)))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
      ),
    );
  }
}
