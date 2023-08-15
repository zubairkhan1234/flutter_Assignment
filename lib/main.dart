import 'package:flutter/material.dart';
import 'package:flutterassignment/appBar/app_bar.dart';
import 'package:flutterassignment/body/home.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/myapp/myapp.dart';

// import 'package:flutterassignment/bottomBar/bottom_bar.dart';
void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: MyHomePage(),
//       home : Column(
//         children: [
//           Column(
//             children: [
//               Text("helo 1"),
//               Text("helo 1"),
//               Text("helo 1"),
//               Text("helo 1"),
//               Text("helo 1"),
//             ],
//           )
//         ],
//       )
//
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar(),
//       body: Home(),
//       bottomNavigationBar: BottomNavigationExample(),
//     );
//   }
// }

// class BottomNavigationExample extends StatefulWidget {
//   const BottomNavigationExample({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavigationExampleState createState() =>
//       _BottomNavigationExampleState();
// }
//
// class _BottomNavigationExampleState extends State {
//   int _selectedTab = 0;
//
//   List _pages = [
//     Center(
//       child: Text("Home"),
//     ),
//     Center(
//       child: Text("About"),
//     ),
//     Center(
//       child: Text("Products"),
//     ),
//     Center(
//       child: Text("Contact"),
//     ),
//     Center(
//       child: Text("Settings"),
//     ),
//   ];
//
//   _changeTab(int index) {
//     setState(() {
//       _selectedTab = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: _pages[_selectedTab],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedTab,
//         onTap: (index) => _changeTab(index),
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.contact_mail), label: "Contact"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       ),
//     );
//   }
// }
