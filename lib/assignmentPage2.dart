import 'package:flutter/material.dart';
import 'assignmentPage.dart';
class Assignment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flutter Demo")),
      body: Column(
        children: [
          Text("Assignment 01"),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) { return Assignment()}));
          }, child: Text('Next'))
        ],
      ),
    );
  }
}