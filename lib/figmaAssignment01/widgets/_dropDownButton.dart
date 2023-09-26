
import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {

  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  List listItem = [
    'a','b','c','d','f','g'
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(items:  listItem.map((e){
      return DropdownMenuItem(child: Text(e.toString()), value: e,)
    }), onChanged: onChanged));
  }
}
