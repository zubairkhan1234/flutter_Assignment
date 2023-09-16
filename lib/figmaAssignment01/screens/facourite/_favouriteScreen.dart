import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';
import '../../constants/_svg_icons.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteState();
}

class _FavouriteState extends State<FavouriteScreen> {
  List offerList = [
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '50',
      'color': 0xFFFFDC83
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '43',
      'color': 0xFFFFDC83

    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '23',
    'color': 0xFFFFC3BB
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '32',
      'color': 0xFFF0FBC5
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '23',
      'color': 0xFFFFDC83
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '25',
      'color': 0xFFF0FBC5
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '21',
      'color': 0xFFFFDC83
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '05',
      'color': 0xFFFFC3BB
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '80',
      'color': 0xFFF0FBC5
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '12',
      'color': 0xFFFFDC83
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '90',
      'color': 0xFFFFC3BB
    },
    {
      'title': 'Big & Small Fishes',
      'discription': 'Fresh from sea',
      'price': '100',
      'color': 0xFFFFDC83
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double screenHeight = (size.height);
    double screenWidth = (size.width);
    return SizedBox(
      height: screenHeight,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: offerList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 137,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 167,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:  Color(offerList[index]['color'] ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        (SvgIcons.productFallback),
                        width: 68,
                        height: 68,
                        color: GlobalColors.blackDark,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              offerList[index]['title'],
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Manrope",
                                  color: GlobalColors.blackDark,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text("${offerList[index]['discription']}",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Manrope",
                                    color: GlobalColors.greyDark,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "starting From",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Manrope",
                                  color: GlobalColors.blackDark,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                            Text("Rs: ${offerList[index]['price']}/KG",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Manrope",
                                    color: GlobalColors.blueLight,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ],
                    )),
                  )
                ],
              ),
            );
          }),
    );
  }
}
