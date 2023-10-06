import 'dart:ui';

import 'package:flutter/material.dart';

//MediaQuery---------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size ;
    Size size = MediaQuery.sizeOf(context) ;
    print(size) ;
    print(size.width);
    print(size.height) ;
    print(size.aspectRatio);
    print(size.flipped);
    //Orientation orientation = MediaQuery.orientationOf(context) ;
    //print(orientation);
    List<DisplayFeature> displayFeatures = MediaQuery.displayFeaturesOf(context) ;
    print(displayFeatures) ;
    print(MediaQuery.devicePixelRatioOf(context)) ;
    print(MediaQuery.platformBrightnessOf(context)) ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);
          if (constraints.maxWidth > 500) {
            return Center(child: Text("Too big Screen"));
          }
          else {
            return Center(
              child: OrientationBuilder(
                  builder: (context, orientation) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(orientation == Orientation.portrait
                            ? 'protrait'
                            : 'landscape'),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text("12332456778890099876543221123456789"),
                            Text("cvgvhbbhvgvgffcfcfcfggf vgvgvg"),
                            Text("cvgvhbbhvgvgffcfcfcfggf vgvgvg"),
                            Text("cvgvhbbhvgvgffcfcfcfggf vgvgvg"),
                          ],
                        )
                      ],
                    );
                  }
              ),
            );
          }
        }
      ),
    );
  }
}
