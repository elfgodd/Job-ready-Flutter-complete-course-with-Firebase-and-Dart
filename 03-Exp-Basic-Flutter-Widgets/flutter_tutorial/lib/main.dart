import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My First App',
    // home: Text('My first Flutter Application'),
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Flutter Rocks'),
        centerTitle: true,
      ),
      body: Text('My First Flutter Application'),
    ),
  ));
}
