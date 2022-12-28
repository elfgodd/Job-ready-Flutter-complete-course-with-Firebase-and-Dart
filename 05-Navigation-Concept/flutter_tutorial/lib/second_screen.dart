import 'package:flutter/material.dart';

import './first_screen.dart';

class SecondScreen extends StatelessWidget {
  // String name;
  static String id = '/second_screen';
  // const SecondScreen({super.key});
  // SecondScreen(this.name);
  // SecondScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    // Retrieve the data from first screen
    //

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // print(name);

            Navigator.pop(context, true);

            // Pop
            // Go Back to previous page
            // Navigator.pop(context);

            // Go to different page
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => FirstScreen()));

            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) => FirstScreen()));
          },
          // child: Text('Go Back'),
          // child: Text('Print'),
          child: Text('Go back with value'),
        ),
      ),
    );
  }
}
