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
    );
  }
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context, 
                  MaterialPageRoute(
                      builder: (context) => contactScreen()),
              );
            }, child: Text("Go to contact page")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => settings()),
              );
            }, child: Text("Go to settings")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => productList()),
              );
            }, child: Text("Go to product list")),
          ],
        ),
      ),
    );
  }
}

class contactScreen extends StatelessWidget {
  const contactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(onPressed: (){}, child: Text("Click to mail us"))
          ],
        ),
      ),
    );
  }
}

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(onPressed: (){}, child: Text("Click to check settings"))
          ],
        ),
      ),
    );
  }
}

class productList extends StatelessWidget {
  const productList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product list"),
      ),
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return productDetails(name: index.toString()) ;
                })).then((value) {
                  print(value) ;
                });
              },
              title: Text(index.toString()),
              subtitle: Text("Details $index"),
            );
          }
          )
    );
  }
}

class productDetails extends StatelessWidget {
  final String name ;
  const productDetails({super.key , required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name , style:TextStyle(
              fontSize: 24 ,
            ),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context , "Product-$name") ;
            }, child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}





