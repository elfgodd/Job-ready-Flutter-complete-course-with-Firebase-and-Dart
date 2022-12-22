## 1. <u>Stack concept behind Navigation</u>

### <u>NAVIGATION</u>

**Navigation** is key part of the user experience for any mobile application. users will constantly be navigating between different screens in your application

Flutter also uses this concept of Stack i.e popping and pushing pages on top of each other

### <u>BASIC NAVIGATION</u>

```
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:'Navigation Basics',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Contact Us'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactUs()),
            );
          },
        ),
      ),
    );
  }
}

```

Navigator.push takes two parameters: context and MaterialPageRoute Widget

NOTE: You can use Navigator.pushReplacement() to clear the stack that means we cannot go back
