import 'package:flutter/material.dart';
import 'package:flutterassignment/headerFooter/myapp/myHomePage.dart';
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
