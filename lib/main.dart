import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Orientation Demo'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return Column(
              children: [
                Expanded(
                  child: Image.network('https://static.bhphotovideo.com/explora/sites/default/files/video/CTV-3633-5-Tips-to-Improve-Your-Nature-Photography-Covershot.jpg'),
                ),
                Text('John Doe'), // Replace with your text
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: orientation == Orientation.portrait ? 3 : 3,
                    children: List.generate(9, (index) {
                      return Center(
                        child: Image.network('https://pathfriend-bd.com/wp-content/uploads/2019/08/Dhaka-Photography-Tour.jpg'),
                      );
                    }),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
