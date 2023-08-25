import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  Widget  title;
  Home(this.title, {Key? key}) : super(key : key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: widget.title
    );
  }
}