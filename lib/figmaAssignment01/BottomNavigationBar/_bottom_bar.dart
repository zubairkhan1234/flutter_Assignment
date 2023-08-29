import 'package:flutter/material.dart%20';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key,});

  @override
  State<CustomBottomNavigation> createState() => _State();
}

class _State extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      items:  [
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/svgIcons/home.svg'), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
      BottomNavigationBarItem(icon: Icon(Icons.more), label: "More"),
      ],
      selectedItemColor: Colors.red,
      currentIndex: 1,
      backgroundColor: Colors.yellow,
      unselectedItemColor: Colors.grey,
    )
    );
  }
}
