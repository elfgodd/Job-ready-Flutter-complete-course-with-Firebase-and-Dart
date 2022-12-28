import 'package:flutter/material.dart';
import 'package:flutter_tutorial/second_screen.dart';
import 'package:flutter_tutorial/third_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  static String id = '/first_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              // Navigator.pushNamed(context, SecondScreen.id, arguments: {
              //   'name': 'Alberto Guzman',
              //   'founder': '@OrbitBaseIO'
              // });

              // Push method
              bool status = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              print(status);

              // MaterialPageRoute(
              //     builder: (context) =>
              //         SecondScreen(name: 'Alberto Guzman')));
              // Navigator.pushNamed(context, '/second_screen');
              // Navigator.pushNamed(context, ThirdScreen.id);
              // Navigator.pushReplacementNamed(context, '/second_screen');

              // Navigator.pushReplacementNamed(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Text('Go to Second Screen')),
      ),
    );
  }
}

// Push and PushReplacement
