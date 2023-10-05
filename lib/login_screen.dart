import 'package:flutter/material.dart';
import 'package:flutterassignment/signUpScreen.dart';
import 'package:flutterassignment/widgets/button.dart';
import 'package:flutterassignment/widgets/input_feilds.dart';
import 'package:flutterassignment/widgets/socials_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget{
    LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
               InputsFields(hintText: 'Email', controller: emailController,),
              const SizedBox(height: 20),
               InputsFields(hintText : "PassWord", controller: passController,),
              const SizedBox(height: 20),
               // CustomButton(),
              ElevatedButton(onPressed: () async{

                try {
                  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: "abc@gmail.com",
                    password: '123456',
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              }, child: Text("Sing Up")),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
              }, child: Text("Don't have an account"))
            ],
          ),
        ),
      ),
    );
  }

}
