import 'package:flutter/material.dart';
import 'package:flutterassignment/pallete.dart';


class InputsFields extends StatelessWidget{
  final String hintText;
  const InputsFields({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400
      ),
      child: TextFormField(
        decoration:  InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder:  OutlineInputBorder(
             borderSide: const BorderSide(
               color: Pallete.borderColor,
               width: 3
             ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder:  OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Pallete.borderColor,
                  width: 3
              ),
              borderRadius: BorderRadius.circular(10),
          ),
            hintText: hintText,

        ),
      ),
    );

  }

}
