import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? selectedValue;
  var listItem = ['Green Way 3000, Sylhet', 'b', 'c', 'd', 'f', 'g'];


  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: const Text('Select Address', style: TextStyle(color: GlobalColors.white),),
      dropdownColor: GlobalColors.white,
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value.toString();
          });
        },
        items: listItem.map((e) {
          return DropdownMenuItem(
            child: Text(e.toString(), style: TextStyle(color: GlobalColors.white),),
            value: e,
          );
        }).toList());
  }
}
