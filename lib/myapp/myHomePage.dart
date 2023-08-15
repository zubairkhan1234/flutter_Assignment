import 'package:flutter/material.dart';
import "package:flutterassignment/appBar/app_bar.dart";
class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Text("hello body"),
      bottomNavigationBar: Text("Hello Bottom Bar"),
    );
  }
}