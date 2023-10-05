import 'package:flutter/material.dart';

void main ( ) {
  runApp(myApp( )) ;
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen( ),
      title: "SmartApp",
    );
  }
}

/*class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int counter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter+=1 ;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}*/

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0 ;
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
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => profileScreen(username: 'Ashikul Islam'),),);
            }, child: Text("Profile"))
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter+=1 ;
          if (counter == 10) {
            counter = 0 ;
          }
          //print(counter);
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class profileScreen extends StatefulWidget {
  final String username ;
  const profileScreen({super.key , required this.username});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          widget.username ,
        ),
      ),
    );
  }
}

