import 'package:flutter/material.dart';
import 'package:flutter_tutorial/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));

              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Text('Go to Second Screen')),
      ),
    );
  }
}

// Push and PushReplacement