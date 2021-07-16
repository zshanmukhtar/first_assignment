import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  String text = 'Tap the buttons to change count value';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Assignment'),
      ),

  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  floatingActionButton: Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            count++;
            text = 'Count value increasing';
            setState(() {});
          },
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            count--;
            text = 'Count value decreasing';
            setState(() {});
          },
        ),
      ],
    ),),
        




      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
