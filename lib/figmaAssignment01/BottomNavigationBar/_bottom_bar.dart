// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class CustomBottomNavigation extends StatefulWidget {
//   const CustomBottomNavigation({super.key,});
//
//   @override
//   State<CustomBottomNavigation> createState() => _State();
// }
//
// class _State extends State<CustomBottomNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     bottomNavigationBar: BottomNavigationBar(
//       items:  [
//       BottomNavigationBarItem(icon: SvgPicture.asset('assets/svgIcons/home.svg'), label: "Home"),
//       BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
//       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
//       BottomNavigationBarItem(icon: Icon(Icons.more), label: "More"),
//       ],
//       selectedItemColor: Colors.red,
//       currentIndex: 1,
//       backgroundColor: Colors.yellow,
//       unselectedItemColor: Colors.grey,
//     )
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterassignment/figmaAssignment01/constants/_svg_icons.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';
class CustomBottomNavigation extends StatefulWidget {
  final Function(int)? ontapChangeScreen;
  final int index ;
  const CustomBottomNavigation({this.ontapChangeScreen, required this.index});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<CustomBottomNavigation> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.yellow)
          ),
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: widget.index,
            height: 60.0,

            items: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child:  SvgPicture.asset(SvgIcons.home, color: widget.index == 0 ? Colors.yellow : Color(GlobalColors.blackDark)),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child:  SvgPicture.asset(SvgIcons.heart,  color: widget.index == 1 ? Colors.yellow : Color(GlobalColors.blackDark)),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child:SvgPicture.asset(SvgIcons.category,  color: widget.index == 2 ? Colors.yellow : Color(GlobalColors.blackDark)),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SvgPicture.asset(SvgIcons.moreVertical,  color: widget.index == 3 ? Colors.yellow : Color(GlobalColors.blackDark)),
              ),
            ],
            color: Color(GlobalColors.white),

            buttonBackgroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 400),
            onTap:  widget.ontapChangeScreen,
            letIndexChange: (index) => true,

          ),

          // body: Container(
          //   color: Colors.blueAccent,
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         Text(_page.toString(), textScaleFactor: 10.0),
          //         ElevatedButton(
          //           child: Text('Go To Page of index 1'),
          //           onPressed: () {
          //             final CurvedNavigationBarState? navBarState =
          //                 _bottomNavigationKey.currentState;
          //             navBarState?.setPage(1);
          //           },
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        );
  }
}