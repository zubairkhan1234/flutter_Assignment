import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/login_screen.dart';
import 'package:flutterassignment/widgets/button.dart';
import 'package:flutterassignment/widgets/input_feilds.dart';
import 'package:flutterassignment/widgets/socials_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  registerUser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      FirebaseFirestore.instance
          .collection('users')
          .doc(credential.user!.uid)
          .set({
        'uid': credential.user!.uid,
        "firsName": firstnameController.text.trim(),
        "lastName": lastNameController.text.trim(),
        "email": emailController.text.trim(),
        // "password": passwordController.text.trim(),
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign Up ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const Text(
                "or",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 20),
              InputsFields(
                  hintText: 'First Name', controller: firstnameController),
              const SizedBox(height: 20),
              InputsFields(
                hintText: "Last Name",
                controller: lastNameController,
              ),
              const SizedBox(height: 20),
              InputsFields(
                hintText: "Email",
                controller: emailController,
              ),
              const SizedBox(height: 20),
              InputsFields(
                hintText: "PassWord",
                controller: passwordController,
              ),
              const SizedBox(height: 20),
              // CustomButton(),
              ElevatedButton(
                  onPressed: () {
                    registerUser();
                  },
                  child: Text("Sing Up")),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Already have an account'))
            ],
          ),
        ),
      ),
    );
  }
}
