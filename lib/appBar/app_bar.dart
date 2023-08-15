import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
  MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() =>  _AppBarState() ;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}

class _AppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello1")),
    );
  }
}
