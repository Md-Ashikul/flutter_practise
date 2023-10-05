import 'package:flutter/material.dart';

void main ( ) {
  runApp(myApp()) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SmartApp",
      home: HomeScreen( ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(value: true, onChanged: (bool value) {}) ,
            ElevatedButton(onPressed: (){
              showDialog(barrierDismissible : false , context: context, builder: (context) {
                return AlertDialog(
                  title: Text("Alert"),
                  content: Text("You are in danger"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context) ;
                    }, child: Text("cancel")) ,
                    TextButton(onPressed: (){}, child: Text("okey")) ,
                  ],
                ) ;
              }) ;
            }, child: Text("Show Dialogue")) ,
            ElevatedButton(onPressed: (){
              showAboutDialog(
                context: context,
                applicationName: "SmartApp" ,
                applicationVersion: "1.2.4" ,
                children: [
                  Text("This is good for regular use")
                ]
              ) ;
            }, child: Text("About")) ,
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                isDismissible: false,
                  barrierColor: Colors.black45,
                  backgroundColor: Colors.blueGrey.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)
                    )
                  ),
                  context: context, builder: (context){
                return Center(
                  child: Column(
                    children: [
                      Text("This is bottom sheet"),
                    ],
                  ),
                );
              }) ;
            }, child: Text("Show bottom sheet"))
          ],
        ),
      ),
    );
  }
}
