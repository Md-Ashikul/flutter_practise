import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Shopping List'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              textColor: Colors.pink,
              leading: Icon(Icons.apple,color: Colors.deepPurple,),
              title: Text('Apples', style: TextStyle(fontSize: 18.0)),
            ),
            Divider(height: 5,color: Colors.blue,),
            ListTile(
              textColor: Colors.pink,
              leading: Icon(Icons.emoji_food_beverage,color: Colors.deepPurple,),
              title: Text('Tea', style: TextStyle(fontSize: 18.0)),
            ),
            Divider(height: 5,color: Colors.blue,),
            ListTile(
              textColor: Colors.pink,
              leading: Icon(Icons.fastfood,color: Colors.deepPurple,),
              title: Text('Bread', style: TextStyle(fontSize: 18.0)),
            ),
            Divider(height: 5,color: Colors.blue,),
            ListTile(
              textColor: Colors.pink,
              leading: Icon(Icons.car_repair,color: Colors.deepPurple,),
              title: Text('Car', style: TextStyle(fontSize: 18.0)),
            ),
            Divider(height: 5,color: Colors.blue,),
            ListTile(
              textColor: Colors.pink,
              leading: Icon(Icons.motorcycle,color: Colors.deepPurple,),
              title: Text('Motorcycle', style: TextStyle(fontSize: 18.0)),
            ),
            Divider(height: 5,color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}
