import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountScreen(),
    );
  }
}
class CountScreen extends StatefulWidget {
  @override
  _CountScreenState createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });

    if (_count >= 5) {
      _showDialog();
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Button pressed $_count times.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count:", style: TextStyle(
              fontSize: 24 ,
            ),) ,
            Text('$_count', style: TextStyle(
              fontSize: 20 ,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _incrementCount,
                  icon: Icon(Icons.add),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
                SizedBox(width: 10,) ,
                ElevatedButton.icon(
                  onPressed: () {
                    if (_count > 0) {
                      setState(() {
                        _count--;
                      });
                    }
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    primary : Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

