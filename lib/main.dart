import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SmartApp",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: body( ),
    );
  }
}

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 30,
                height: 30,
                color: Colors.green,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 20,
                height: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

