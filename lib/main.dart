import 'package:flutter/material.dart';

void main ( ) {
  runApp(myApp()) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Homescreen( ),
      title: "Smart APP",
    ) ;
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.add_business),
        toolbarHeight: 100,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Scrollbar(
        thickness: 10,
        radius: Radius.circular(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: [
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),
            Icon(Icons.adb_outlined),

          ],
        ),
      ),
    );
  }
}


