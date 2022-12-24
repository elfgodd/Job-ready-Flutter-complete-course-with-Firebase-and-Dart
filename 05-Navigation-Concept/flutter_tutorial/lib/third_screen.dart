import 'package:flutter/material.dart';
import 'package:flutter_tutorial/first_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  static String id = '/third_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstScreen()));
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
