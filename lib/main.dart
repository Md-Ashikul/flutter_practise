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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onLongPress: (){},
              onDoubleTap: (){},
              onTap: (){
                print("Tapped on hello world");
              },
              child: Text("Hello world",style: TextStyle(
                  fontSize: 30
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onDoubleTap: (){},
                onLongPress: (){},
                onTap: (){
                  print("Tapped on this is Ashikul Islam");
                },
                child: Text("This is Ashikul Islam",style: TextStyle(
                    color: Colors.red
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


