import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Homescreen( ),
      title: 'Ashik\'s app',
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text("Home"),
        leading: Icon(
          Icons.add_business,
          color: Colors.deepPurple,
          size: 32,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Football is my drug",
              style: TextStyle(
                color: Colors.indigo, fontSize: 26 , fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "CR7 is my dealer",
              style: TextStyle(
                  color: Colors.indigo, fontSize: 22 , fontWeight: FontWeight.bold
              ),
            ),
            Text("Hello world"),
            Icon(Icons.access_time_outlined),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I "),
                Text("wish "),
                Text("I "),
                Text("could "),
                Text("be "),
                Text("like "),
                Text("me "),
              ],
            ),
            Image.asset('images/cr7.jpg',width: 150,height: 100,fit: BoxFit.scaleDown,),
            Image.network('https://c4.wallpaperflare.com/wallpaper/891/194/510/cristiano-ronaldo-real-madrid-fifa-18-ball-wallpaper-preview.jpg',
                width: 250,
                height: 100,
              fit: BoxFit.scaleDown,
            ),
            RichText(text: TextSpan(
              text: "He is",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20 ,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: "The King",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20 ,
                    fontWeight: FontWeight.w600,
                  )
                ),
                TextSpan(
                  text: "The Myth",
                  style: TextStyle(
                    color: Colors.green ,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                    text: "The Legend",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20 ,
                      fontWeight: FontWeight.w600,
                    )
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}


