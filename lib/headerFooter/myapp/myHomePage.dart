import 'package:flutter/material.dart';
import "package:flutterassignment/appBar/app_bar.dart";
import 'package:flutterassignment/headerFooter/bottomBar/bottom_bar.dart';
class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(),
      body: Text("hello body"),
      bottomNavigationBar: BottomBar(),
    );
  }
}