import 'package:flutter/material.dart';

void main ( ) {
  runApp(myApp( )) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart App",
      home: homeScreen( ),
      theme: ThemeData(
        primaryColor: Colors.green ,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.deepPurple ,
            backgroundColor: Color(0xFFF59289),
            padding: EdgeInsets.symmetric(vertical: 16 , horizontal: 16 ) ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12) ,
            ),
            elevation: 5 ,
            textStyle: TextStyle(
              fontSize: 16 ,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5 ,
              wordSpacing: 1.0 ,
            )
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20 ,
              fontWeight: FontWeight.w600 ,
            ),
            foregroundColor: Colors.purple ,
          )
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black45,
          elevation: 5 ,
          shadowColor: Colors.green ,
          toolbarHeight: 60 ,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18 ,
          ),
          bodyLarge: TextStyle(
            fontSize: 22 ,
            color: Colors.pinkAccent ,
          ),
          bodySmall: TextStyle(
            fontSize: 14 ,
            color: Colors.pinkAccent ,
          )
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark ,
        appBarTheme: AppBarTheme(
          color: Colors.purpleAccent,
          elevation: 5 ,
          shadowColor: Colors.green ,
          toolbarHeight: 60 ,
        )
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

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
            Text("Hello world"),
            Text("It's time for Ashik",style: Theme.of(context).textTheme.bodyLarge,),
            TextButton(onPressed: () {}, child: Text("Text Button")) ,
            ElevatedButton(onPressed: (){}, child: Text("Elevated_Button")) ,
            ElevatedButton(onPressed: (){}, child: Text("Elevated_Button")) ,
          ],
        ),
      ),
    );
  }
}
