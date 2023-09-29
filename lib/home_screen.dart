import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: AspectRatio(
                  aspectRatio: 1.7,
                  child: Image.network('https://via.placeholder.com/150'),
                ),
              );
            },
          )
              : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Image.network('https://via.placeholder.com/150'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
