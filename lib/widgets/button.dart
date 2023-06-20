import 'package:flutter/material.dart';
import 'package:flutterassignment/pallete.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key)

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  BoxDecoration(
        gradient:  const LinearGradient(colors: [
          Pallete.gradient1,
          Pallete.gradient2,
          Pallete.gradient3
        ],),
          borderRadius: BorderRadius.circular(10)
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Sign In",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent
        ),
      ),
    );
  }
}