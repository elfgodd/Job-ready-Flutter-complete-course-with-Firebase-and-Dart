## 1. <u>Text & Scaffold Widget</u>

### <u>#1 FIRST FLUTTER APP</u>

Open Main.dart and delete everything below main() function. Remove the default function inside runApp(). MAIN.dart is like the index page we have in web development. That is the entry point

We have imported material package coz we will be working for android's material design only. For iOS we can use Cupertino package. But it works only on MAC systems. Today we will discuss only Material Widgets

```
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: 'My first App',
    home: Text('My first Flutter Application),
  )
);
```

NOTE: Since will be implementing material design that's why we using MaterialApp widget Here MaterialApp is a widget which accepts two properties / arguments i.e. title and home. Title is the name which is shown in taskbar and home is the main layout page which is visible to user.

### <u>#2 Scaffold & AppBar Widget</u>

To change the color of the application or use Appbar or buttons, we have to use the Scaffold Widget

The Scaffold Widgets accepts the following property or parameters:  
AppBar | Body | Floating Action Button | Bottom Navigation Bar

```
void main() => runApp(
  MaterialApp(
    title: 'My First App',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Programeek'),
        // centreTitle: true,
      ),
      body: Text('My First Flutter Application'),
    ),
  )
);
```

**NOTE**: Here home accepts Scaffold widget as its value. appBar and body are the property of Scaffold. AppBar has title as its property which accepts TEXT Widget.

## 1. <u>Center & Floating Action Button</u>

### <u>#3 Center Widget</u>

If we want to center the text in the body. Then we can Wrap the Text widget inside Center Widget

```
body: Center(
  child: Text('My First Flutter Application')
),
```

**NOTE**: We cannot directly paste the inside center widget. It has an property child which literally means whatsa inside in it. And Child property accepts a Widget. In this Example we are using Text Widget as its value

### <u>#4 Floating Action Button</u>

In most of the apps we have seen a circular button which is usually on the bottom right. We can implement it by passing the property floatingActionButton to Scaffold Widget

```
home: Scaffold(
  appBar: AppBar(
    title: Text(''Programeek),
    centerTitle: true,
  ),
  body: Center(
    child: Text('My First Flutter Application')
  ),
  floatingActionButton: FloatingActionButton(
    child: Text('Add'),
  ),
),
```

**NOTE**: Every Widget has capital letter of first word  
Every Property is accepting another widget as it's value  
Child Property is common most of the time
