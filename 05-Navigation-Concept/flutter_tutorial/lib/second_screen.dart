import 'package:flutter/material.dart';

import './first_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop
            // Go Back to previous page
            // Navigator.pop(context);

            // Go to different page
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstScreen()));
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
