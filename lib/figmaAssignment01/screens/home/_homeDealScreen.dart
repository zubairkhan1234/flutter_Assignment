import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class HomeDealScreen extends StatefulWidget {
  const HomeDealScreen({super.key});

  @override
  State<HomeDealScreen> createState() => _HomeDealScreenState();
}

class _HomeDealScreenState extends State<HomeDealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/homeCardDealBG.png"),
                  fit: BoxFit.cover)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 158,
                height: 123,
                decoration: BoxDecoration(
                    color: GlobalColors.yellowDark,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "364",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              color: GlobalColors.blackDark)),
                      TextSpan(
                          text: " USD",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w300,
                              color: GlobalColors.blackDark))
                    ])),
                    Text(
                      "Your Total Savings",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                width: 158,
                height: 123,
                decoration: BoxDecoration(
                    color: GlobalColors.bone,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "364",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              color: GlobalColors.blackDark)),
                      TextSpan(
                          text: " USD",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w300,
                              color: GlobalColors.blackDark))
                    ])),
                    const Text("Your Total Savings",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
