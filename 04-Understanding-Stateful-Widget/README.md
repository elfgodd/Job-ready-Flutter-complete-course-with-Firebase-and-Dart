## 1. <u>STATEFUL WIDGET</u>

### <u>STATEFUL WIDGET</u>

State is just the value or piece of data in our application.
Anything that can change like a counter count, text, color etc. can be part of State  
Statefull Widget is simply a widget whose internal data will change on some action. Eg: Button is clicked and then text color should be changed. That widget is refreshed and rebuilt/rendered with the new data/state . This is not possible in Stateless Widget.

- Create a Class that extends StatefulWidget
- Create a State Class with properties that may change
- Within State Class implement the Build Function
- Call the setState() to make the changes and redraw the screen with the new value

```
class MyApp extends StatefulWidget {
 @override
 _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 String name = 'Guest';
 @override
 Widget build(BuildContext context) {
   return Scaffold();
 }
}
```

## 2. <u>The setState() method</u>

```
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = 'Guest';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField:(
              onSubmitted: (value) {
                setState(() {
                  name = value;
                });
              }, ),
            Text('Hello $name'),
          ],
        ),
      ),
    );
  }
}

```

### <u>To understand whats going on use DebugPrint()</u>

```
Widget build(BuildContext context)
  debugPrint('Widget is rendering');
  return MaterialApp(

  )
```

```
setState(() {
  name = value;
  debugPrint('SetState is called');
});
```

## 3. <u>What is initState() function</u>
