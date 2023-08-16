import 'package:flutter/material.dart';
import 'package:flutterassignment/myapp/myHomePage.dart';
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
