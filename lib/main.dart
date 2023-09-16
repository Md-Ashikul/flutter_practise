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
          radius: Radius.circular(5),
              child:ListView(
                children: [
                  ListTile(
                    title: Text("Heading of List"),
                    subtitle: Text("Their gmail list"),
                    leading: Icon(Icons.adb_outlined),
                    trailing: Icon(Icons.arrow_right_alt),
                    onTap: (){
                      print("List title pressed");
                    },
                  ),
                  Divider(
                    height: 20,
                    thickness: 3,
                    color: Colors.cyanAccent,
                    endIndent: 16,
                    indent: 16,
                  ),
                  ListTile(
                    title: Text("Heading of List"),
                    subtitle: Text("Their gmail list"),
                    leading: Icon(Icons.adb_outlined),
                    trailing: Column(
                      children: [
                        Icon(Icons.arrow_right_alt),
                        Icon(Icons.arrow_right_alt),
                      ],
                    ),
                    onTap: (){
                      print("List title pressed");
                    },
                  ),
                  ListTile(
                    title: Text("Heading of List"),
                    subtitle: Text("Their gmail list"),
                    leading: Icon(Icons.adb_outlined),
                    trailing: Icon(Icons.arrow_right_alt),
                    onTap: (){
                      print("List title pressed");
                    },
                  ),
                  ListTile(
                    title: Text("Heading of List"),
                    subtitle: Text("Their gmail list"),
                    leading: Icon(Icons.adb_outlined),
                    trailing: Icon(Icons.arrow_right_alt),
                    onTap: (){
                      print("List title pressed");
                    },
                  ),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                  Text("We want better world"),
                ],
              )
          )
    );
  }
}


