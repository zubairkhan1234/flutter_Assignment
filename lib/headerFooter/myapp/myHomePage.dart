import 'package:flutter/material.dart';
import "package:flutterassignment/appBar/app_bar.dart";
import 'package:flutterassignment/headerFooter/bottomBar/bottom_bar.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}): super(key: key);

  @override
  _MyHomePageSate createState() {
    return _MyHomePageSate();
  }}

class _MyHomePageSate extends State{

  int _selectedTab = 0;

  List _pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(),
      body: _pa,
      bottomNavigationBar: BottomBar(),
    );
  }
}