import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
  MyAppBar( {Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() =>  _AppBarState() ;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

class _AppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.deepOrange[200],

        title: Text("hello1", style: TextStyle( color: Colors.red))
    );
  }
}
