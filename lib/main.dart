import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(DevicePreview(
      enabled: kDebugMode,
      builder: (context) {
        return MyApp();
      }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      print(deviceType);
      return MaterialApp(
        title: "SmartApp",
        home: HomeScreen(),
      );
    });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: body(),
    );
  }
}

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizeInformation) {
      return Center(
          child: Text(sizeInformation.deviceScreenType.toString(),
              style: TextStyle(fontSize: 10.sp)));
    });
  }
}
