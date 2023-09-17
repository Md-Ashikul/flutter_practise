import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Welcome to Photo Gallery!', style: TextStyle(fontSize: 24)),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Search'),
              ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(), // Disable GridView scrolling
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image $index clicked')));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.network('https://placekitten.com/200/300'),
                      ),
                      Text('Caption for Image $index'),
                    ],
                  ),
                );
              }),
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                // New Column widget
                Column(
                  children: <Widget>[
                    ListTile( // Image 1 with title and subtitle
                        leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJFxRCN9WzOuzIiIha8Yhmw2wBhesZuvwaiw&usqp=CAU'),
                        title: Text('Photo 1'),
                        subtitle: Text('Description for photo 1')
                    ),
                    // Text field
                    TextField(),
                  ],
                ),
                // Image 2 with title and subtitle
                Column(
                  children: <Widget>[
                    ListTile( // Image 1 with title and subtitle
                        leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJFxRCN9WzOuzIiIha8Yhmw2wBhesZuvwaiw&usqp=CAU/200/300'),
                        title: Text('Photo 2'),
                        subtitle: Text('Description for photo 2')
                    ),
                    // Text field
                    TextField(),
                  ],
                ),
                // Image 3 with title and subtitle
                Column(
                  children: <Widget>[
                    ListTile( // Image 1 with title and subtitle
                        leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJFxRCN9WzOuzIiIha8Yhmw2wBhesZuvwaiw&usqp=CAU/200/300'),
                        title: Text('Photo 3'),
                        subtitle: Text('Description for photo 3')
                    ),
                    // Text field
                    TextField(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Photos Uploaded Successfully!')));
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }
}
