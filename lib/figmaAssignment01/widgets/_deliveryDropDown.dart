
import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class DeliveryDropDown extends StatefulWidget {
  const DeliveryDropDown({super.key});

  @override
  State<DeliveryDropDown> createState() => _DeliveryDropDownState();
}

class _DeliveryDropDownState extends State<DeliveryDropDown> {
  String? selectedValue;
  var listItem = ['1 Hour', '2 Hour', '3 Hour', '4 Hour', '5 Hour', '6 Hour'];


  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        hint: const Text('Select Address', style: TextStyle(color: GlobalColors.white),),
        dropdownColor: GlobalColors.greyLight,
        value: selectedValue == "" ? selectedValue: listItem[0],
        onChanged: (value) {
          setState(() {
            selectedValue = value.toString();
          });
        },
        items: listItem.map((e) {
          return DropdownMenuItem(
            child:  Text(e.toString(), style: TextStyle(color: GlobalColors.white)),
            value: e,
          );
        }).toList());
  }
}
