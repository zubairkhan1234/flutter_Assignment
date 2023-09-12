import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/_svg_icons.dart';
import '../styles/_colors.dart';

class RecommendedProductCart extends StatefulWidget {
  const RecommendedProductCart({super.key});

  @override
  State<RecommendedProductCart> createState() => _RecommendedProductCartState();
}

class _RecommendedProductCartState extends State<RecommendedProductCart> {
  List offerList = [
    {'title': 'Get', 'type': 'Organic', 'price': '50'},
    {'title': 'Get', 'type': 'Organic', 'price': '43'},
    {'title': 'Get', 'type': 'Organic', 'price': '23'},
    {'title': 'Get', 'type': 'Organic', 'price': '32'},
    {'title': 'Get', 'type': 'Organic', 'price': '23'},
    {'title': 'Get', 'type': 'Organic', 'price': '25'},
    {'title': 'Get', 'type': 'Organic', 'price': '21'},
    {'title': 'Get', 'type': 'Organic', 'price': '05'},
    {'title': 'Get', 'type': 'Organic', 'price': '80'},
    {'title': 'Get', 'type': 'Organic', 'price': '12'},
    {'title': 'Get', 'type': 'Organic', 'price': '90'},
    {'title': 'Get', 'type': 'Organic', 'price': '100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Recommended",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              fontFamily: "Manrope",
            ),
          ),
        ),
        Container(
          height: 194,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: offerList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 128,
                  height: 194,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: GlobalColors.greyMoreLight),
                  // color: GlobalColors.greyMoreLight2),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Center(
                        child: SvgPicture.asset(
                          (SvgIcons.productFallback),
                          width: 68,
                          height: 68,
                          color: GlobalColors.greyLight,
                        ),
                      ),
                      Text(offerList[index]['title'],

                          style: const TextStyle(
                              fontSize: 26, color: GlobalColors.white), textAlign: TextAlign.start,),
                      Text("${offerList[index]['type']}",
                          style: const TextStyle(
                              fontSize: 22,
                              color: GlobalColors.white,
                              fontWeight: FontWeight.w900)),
                      Text("${offerList[index]['price']}",
                          style: const TextStyle(
                              fontSize: 16, color: GlobalColors.white))
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
