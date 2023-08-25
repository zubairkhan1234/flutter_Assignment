import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  Function(int) changeTabIndex;
   BottomBar({super.key, required this.changeTabIndex});


  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedTab = 0;
  final List _pages =  [
    const Center(
      child: Text("Home"),
    ),
   const Center(
      child: Text("About"),
    ),
    const Center(
      child: Text("Products"),
    ),
     const Center(
      child: Text("Contact"),
    ),
    const Center(
      child: Text("Settings"),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed ,
      onTap: (index) => widget.changeTabIndex(index) ,
      selectedItemColor: Colors.red,
      currentIndex: _selectedTab,
      backgroundColor: Colors.deepOrange[200],
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
        BottomNavigationBarItem(icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
        BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
