import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp( )
  ) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home( ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.home),
          middle: Text("Home"),
          trailing: CupertinoSwitch(value: true, onChanged: (bool onChange){}),
        ),
        child: Center(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello world"),
          Text("Hello world"),
          Text("Hello world"),
          Text("Hello world"),
          CupertinoButton(child: Text("Home"), onPressed: (){}) ,
          CupertinoButton.filled(child: Text("filled Home"), onPressed: (){}),
          CupertinoTextField(),
          CupertinoTabBar(items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.shield) , label: 'Shield') ,
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cube) , label: 'Cube') ,
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.capsule) , label: 'Capsule') ,
          ])
        ],
      ),
    ));
  }
}



