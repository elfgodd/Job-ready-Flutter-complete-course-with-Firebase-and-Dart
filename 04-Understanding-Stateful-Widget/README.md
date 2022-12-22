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

## 4. <u>Understanding Widget lifecycle</u>

### <u>Stateful Widget Lifecycle</u>

1. initState()  
   This is the first method called when the widget is created. It is called
   **once and only once**. It is usually used to:

- Initialize properties that rely on this widgets 'parent' in the tree.
- Subscribe to Streams, ChangeNotifiers, or any other object that could change the data on this widget

2. didChangeDepencies()
   This method is called immediately after initState and when dependency of the State object changes via inheritedWidget. This method is rarely needed or used. The docs also suggest that it could be useful if you need to do network calls (or any other expensive action) when an inheritedWidget updates.

3. Build()
   This method is called every time the widget is rebuilt. It is a required
   and must be return a widget.

4. didUpdateWidget()
   It is called if the parent widget changes and has to rebuild this
   widget (because it needs to give it different data). A typical case is
   when a parent passes some variable to the children widget via the constructor  
    Flutter calls the build method after this. So no need to write setState on your own.

   ```
   @overrride
   void didUpdateWidget(Widget oldWidget) {
    if(oldWidget.importantProperty != widget.importantProperty) {
      _init();
    }
   }
   ```

5. setState()
   The setState method is called often when we are dealing with lots of data. It is used to notify the framework that 'data has changed and the build() is to be called so that the screen is rebuilt to reflect the changes.

6. deactive()
   This method is called when the object is removed from the tree. This is rarely used. This method exists basically because state objects can be moved from one point in a tree to another.

7. dispose()
   This method is called when this object is removed from the tree permanently. Here we should release any resources retained by this object like stopping anumation for instance. One example when this method is called is while using the pushReplacement() of the Navigator to replace the current widget with a new one. Also when you are using some streams or TextEditing Controllers which are needed to be disposed to avoid memory leak.
