import 'package:flutter/material.dart';
import 'package:flutter_practise/homeScreen.dart';
void main  ( ) {
  runApp(myApp( )) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SmartAPP",
      home: homescreen(),
    );
  }
}
