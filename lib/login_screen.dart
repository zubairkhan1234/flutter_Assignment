import 'package:flutter/material.dart';
import 'package:flutterassignment/widgets/button.dart';
import 'package:flutterassignment/widgets/input_feilds.dart';
import 'package:flutterassignment/widgets/socials_buttons.dart';

class LoginScreen extends StatelessWidget{
  const  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text('Sign In ', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),
              ),
              const SizedBox(height: 50),
              const SocialsButtons(iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google',horizontalPadding: 95, ),
              const SizedBox(height: 20),
              const SocialsButtons(iconPath: 'assets/svgs/f_logo.svg', label: 'Continue with Facebook', horizontalPadding: 85,),
              const SizedBox(height: 20),
              const Text("or",
              style: TextStyle(
                fontSize: 17
              ) ,
              ),
              const SizedBox(height: 20),
              const InputsFields(hintText: 'user Name'),
              const SizedBox(height: 20),
              const InputsFields(hintText : "Pass Word"),
              const SizedBox(height: 20),
               CustomButton(),
            ],
          ),
        ),
      ),
    );
  }

}
