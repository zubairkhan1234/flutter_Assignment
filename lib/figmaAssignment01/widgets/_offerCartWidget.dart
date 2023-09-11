
import 'package:flutter/material.dart';
import "package:flutter_svg/svg.dart";

import "../constants/_svg_icons.dart";
import "../styles/_colors.dart";

class OfferCart extends StatefulWidget {
   OfferCart({super.key});

  @override
  State<OfferCart> createState() => _OfferCartState();
}

class _OfferCartState extends State<OfferCart> {
  List offerList = [
    {'title': 'Get', 'offerPercent': '50', 'orderLimit': '50'},
    {'title': 'Get', 'offerPercent': '15', 'orderLimit': '43'},
    {'title': 'Get', 'offerPercent': '20', 'orderLimit': '23'},
    {'title': 'Get', 'offerPercent': '19', 'orderLimit': '32'},
    {'title': 'Get', 'offerPercent': '80', 'orderLimit': '23'},
    {'title': 'Get', 'offerPercent': '34', 'orderLimit': '25'},
    {'title': 'Get', 'offerPercent': '45', 'orderLimit': '21'},
    {'title': 'Get', 'offerPercent': '55', 'orderLimit': '05'},
    {'title': 'Get', 'offerPercent': '12', 'orderLimit': '80'},
    {'title': 'Get', 'offerPercent': '12', 'orderLimit': '12'},
    {'title': 'Get', 'offerPercent': '5', 'orderLimit': '90'},
    {'title': 'Get', 'offerPercent': '90', 'orderLimit': '100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: offerList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 269,
              height: 123,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.amber),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset((SvgIcons.imageFallBack)),
                  ),
                  Container(
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(offerList[index]['title'] ,
                            style: const TextStyle(
                                fontSize: 26, color: GlobalColors.white)),
                        Text("${offerList[index]['offerPercent']}% OFF",
                            style: const TextStyle(
                                fontSize: 22,
                                color: GlobalColors.white,
                                fontWeight: FontWeight.w900)),
                        Text("On first ${offerList[index]['orderLimit']} orders",
                            style:  const TextStyle(
                                fontSize: 16, color: GlobalColors.white))
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
