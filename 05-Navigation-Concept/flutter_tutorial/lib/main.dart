import 'package:flutter/material.dart';

import './first_screen.dart';
import './second_screen.dart';
import './third_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'My First App',
    // home: Text('My first Flutter Application'),
    // home: FirstScreen(),
    // When we using routes we should Not use Home property
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      // '/second_screen': (context) => SecondScreen(),
      // Cleaner routes
      ThirdScreen.id: (context) => ThirdScreen(),
      FirstScreen.id: (context) => FirstScreen(),
      SecondScreen.id: (context) => SecondScreen(),
    },
  ));
}
