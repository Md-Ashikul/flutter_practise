import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<bool> selectedItems = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selectedItems = List.generate(selectedItems.length, (index) => false);
          });
        },
        child: ListView.builder(
          itemCount: selectedItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedItems[index] = !selectedItems[index];
                });
              },
              onDoubleTap: () {
                setState(() {
                  selectedItems[index] = false;
                });
              },
              child: ListTile(
                title: Text('Item ${index + 1}'),
                tileColor: selectedItems[index] ? Colors.blue : null,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              int count = selectedItems.where((item) => item).length;
              return AlertDialog(
                titlePadding: EdgeInsets.all(0),
                title: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Selected Items', style: TextStyle(color: Colors.black)),
                  ),
                ),
                contentPadding: EdgeInsets.all(10),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Number of selected items:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('$count'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Close'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
