import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Flutter Rocks'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Text(
        'My First Flutter Application',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Text('Add'),
        onPressed: () {
          print('Hello');
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}
