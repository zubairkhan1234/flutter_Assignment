import 'package:flutter/material.dart';
import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class AddressDropDown extends StatefulWidget {
  const AddressDropDown({super.key});

  @override
  State<AddressDropDown> createState() => _AddressDropDownState();
}

class _AddressDropDownState extends State<AddressDropDown> {
  String? selectedValue;
  var listItem = ['Khi,Pakistan', 'Lhr,Pakistan', ',Isb,Pakistan', 'Fsd,Pakistan',];


  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: const Text('Select Address', style: TextStyle(color: GlobalColors.white),),
      dropdownColor: GlobalColors.greyLight,
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
