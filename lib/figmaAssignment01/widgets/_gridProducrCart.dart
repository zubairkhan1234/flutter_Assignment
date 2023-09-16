import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/_svg_icons.dart';
import '../styles/_colors.dart';

class GridProductCart extends StatefulWidget {
  const GridProductCart({super.key});

  @override
  State<GridProductCart> createState() => _GridProductCartState();

}

class _GridProductCartState extends State<GridProductCart> {
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
    var size = MediaQuery.of(context).size;


    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height );
    final double itemWidth = size.width / 2;


    return SingleChildScrollView(
        child: Container(
      height: itemHeight,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 25,
        mainAxisSpacing: 20,
        children: List.generate(
            offerList.length,
            (index) => Container(
                  width: 154,
                  height: 164,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: GlobalColors.greyMoreLight),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            (SvgIcons.productFallback),
                            width: 68,
                            height: 68,
                            color: GlobalColors.greyLight,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          offerList[index]['title'],
                          style: const TextStyle(
                              fontSize: 13,
                              color: GlobalColors.blackDark,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        Text("${offerList[index]['type']}",
                            style: const TextStyle(
                                fontSize: 12,
                                color: GlobalColors.greyDark,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                )),
      ),
    ));
  }
}
