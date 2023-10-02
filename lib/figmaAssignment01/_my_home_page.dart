import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/BottomNavigationBar/_bottom_bar.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
import 'package:flutterassignment/figmaAssignment01/screens/category/_CategoryScreen.dart';
import 'package:flutterassignment/figmaAssignment01/screens/facourite/_favouriteScreen.dart';
import 'package:flutterassignment/figmaAssignment01/screens/home/_homeScreen.dart';
import 'package:flutterassignment/figmaAssignment01/screens/onboarding/_onBoarding.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';
import 'package:flutterassignment/figmaAssignment01/widgets/_dropDownButton.dart';
import 'package:flutterassignment/figmaAssignment01/widgets/_searchDelegate.dart';

class _State extends State<MyHomePage> {
  List appBarWidgets = [
    AppBar(
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Column(
          children: [
            // Text("hellp")
            Builder(
              builder: (context) {
                return TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Product",
                    hintStyle: TextStyle(color:GlobalColors.greyLight ),
                    fillColor: GlobalColors.blueDark,
                    prefixIcon: Icon(Icons.search, color: GlobalColors.white),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: GlobalColors.blueDark, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: GlobalColors.blueDark, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: GlobalColors.blueDark, width: 2)),
                  ),
                  onTap: () => showSearch(
                    context: context,
                    delegate: Search(),
                  ),
                  readOnly: true,
                );
                // return FloatingActionButton(
                //   child: Icon(Icons.search),
                //   onPressed: () => showSearch(
                //     context: context,
                //     delegate: Search(),
                //   ),
                // );
              },
            ),
            MyDropDown(),
            MyDropDown(),

          ],
        ),
      ),
      title: Text("Hey'Halal"),
      backgroundColor: GlobalColors.blueLight,
      actions: [
        Padding(
            padding: EdgeInsets.zero, // Padding ko zero set karein
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    // Yahan aapka icon ke action ko daal sakte hain
                  },
                  icon: SvgPicture.asset(SvgIcons.shopIcon),
                ),
                // const CircleAvatar(child: Text("3"),)
              ],
            )),
      ],
    ),
    AppBar(
      automaticallyImplyLeading: false,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shop",
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Manrope',
                  color: GlobalColors.white),
            ),
            Text(
              "By Category",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                  color: GlobalColors.white),
            ),
          ],
        ),
      ),
      title: Text("Hey'Halal"),
      backgroundColor: GlobalColors.blueLight,
      actions: [
        Padding(
            padding: EdgeInsets.zero, // Padding ko zero set karein
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(SvgIcons.shopIcon),
                ),
                // const CircleAvatar(child: Text("3"),)
              ],
            )),
      ],
    ),
    AppBar(
      automaticallyImplyLeading: false,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shop",
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Manrope',
                  color: GlobalColors.white),
            ),
            Text(
              "By Category",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                  color: GlobalColors.white),
            ),
          ],
        ),
      ),
      title: Text("Hey'Halal"),
      backgroundColor: GlobalColors.blueLight,
      actions: [
        Padding(
            padding: EdgeInsets.zero, // Padding ko zero set karein
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(SvgIcons.shopIcon),
                ),
                // const CircleAvatar(child: Text("3"),)
              ],
            )),
      ],
    ),
    AppBar(title: Text('Screen4')),
  ];
  List appBarTitle = [
    Text('Screen1'),
    Text('Screen2'),
    Text('Screen3'),
    Text('Screen4'),
  ];

  List screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavouriteScreen(),
    Text('fist4')
  ];
  int screensIndex = 0;

  ontapChangeScreen(index) {
    print(index);
    setState(() {
      screensIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      appBar: appBarWidgets[screensIndex],
      // appBar: AppBar(title: appBarTitle[screensIndex]),
      body: screens[screensIndex],
      bottomNavigationBar: CustomBottomNavigation(
        ontapChangeScreen: (index) {
          setState(() {
            screensIndex = index;
          });
        },
        index: screensIndex,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _State();
}
