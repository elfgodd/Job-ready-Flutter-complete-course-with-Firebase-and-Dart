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

## 2. <u>Center & Floating Action Button</u>

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

## 3. <u>Changing Color and Styling</u>

To change color of the appBar we have the property backgroundColor The value of color is written using the keyword Colors, and followed by the name of the color

```
appBar: AppBar(
  title: Text('Programeek'),
  centerTitle: true,
  backgroundColor: Colors.amber,
),
```

Similarly to change color of floatingActionButton

```
floatingActionButton: FloatingActionButton(
  child: Text('Add'),
  backgroundColor: Colors.red,
),
```

### <u>#5 Styling Text Widget</u>

To change the color or give styling to a Text, We have to give a property of style to the Text Widget  
A text Widget also accepts different arguments / property. The first property is positional where we mention The actual text and other property are named arguments such as style.  
Now style property will accept another widget as its value which is the TextStyle Widget. And inside TextStyle we can mention color, fontsize, fontweight etc etc

```
Center(
  child: Text(
    'My First Flutter Application',
    style: TextStyle(
      color: Colors.cyan,
      fontWeight: FontWeight.bold,
      fontSize: 30.0
    ),
  )
),
```

## 4. <u>What are Stateless Widget</u>

### <u>STATELESS WIDGET</u>

Till now we were writing code in our main function. But this is not the case when we build a real application. We have to separate our code into smaller pieces and use them wherever required. We can create our own widget which will contain all the other widgets in it.

TYPES OF CUSTOM BUILT WIDGET: STATELESS and STATEFUL Widget  
We can create a Stateless widget by extending our class from StatelessWidget and a bare minimum implementation shall look like

```
class AnyName extends StatelessWidget {
  @override
  // return type
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
```

Just Simply remember Data within a stateless widget cannot be changed after its being rendered. Suppose we want that after a button is clicked the color of the text should be changed. This is not possible in Stateless Widget

**Here AnyName is a StatelessWidget and it has to override the function called build() which returns a widget.**

### <u>Implemeting Stateless Widget</u>

```
void main() => runApp(
  MaterialApp(
    title:'My First App',
    // Calling the Home Widget
    home: MyHome(),
  )
);
```

**NOTE**: HOT RELOAD WILL NOW WORK

```
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Programeek'),
      centerTitle: true,
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Text(
        'My First Flutter Application',
        style: TextStyle(
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        ),
      )
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Add'),
      backgroundColor: Colors.red,
    ),
    );
  }
}
```

## 5. <u>Asset and Network Image</u>

### <u>Images</u>

Until now we were just displaying text but a real application contains Images as well

**Types of Images: Network Image and Asset Image**  
**Network Image means any image from internet.**  
**Copy url address of image and paste it inside image.network**

```
body: Center(
  child: Image.network(
    'https://codemate.com/content/logo.png'
  )
),
```

**_NOTE_**: We remove Text Widget because we cannot pass two Widgets directly in a child

### <u>Setup Asset Image(local)</u>

To insert an image which is present in your system.

- Make a folder images in root directory and paste the image inside it
- Go to Pubspec.yaml file and uncomment the asset section
- MAKE SURE OF INDENTATION OR ELSE IT WILL SHOW ERROR
- Write your image directory location with or without the image name

### <u>INSERTING ASSET IMAGE</u>

**SYNTAX: Image.asset(Image exact location with extension)**

```
body: Center(
  child: Image.asset('images/goku.jpg'),
),
```

**To change properties such as height, weight etc of the image**

```
body: Center(
  child: Image.asset('images/goku.jpg',
          width: 100.0,
          height: 100.0,
          color: Colors.black,
  ),
),
```

## 6. <u>Icon Widget</u>

Flutter comes loaded with tons of icons which can be used to make our app more beautiful  
**SYNTAX: ICON(ICONS.anyIconName)**

```
body: Center(
  child: Icon(Icons.access_alarms)
),
```

To change its color and size. Icon widget accept other properties.

```
body: Center(
  child: Icon(Icons.access_alarms,
    color: Colors.orange,
    size: 200.0,
  )
),
```

### <u>Button Widget</u>

TYPES OF BUTTONS: TEXT BUTTON, ELEVATED BUTTON and ICON BUTTON

**TEXT BUTTON** (No elevation or 3d effect)  
Syntax: TextButton(child: , onPressed:)

```
body: Center(
  child: TextButton(
    child: Text('Click me'),
    onPressed: (){},
  )
),
```

```
// STYLING THE BUTTON
  TextButton(
    child: Text('Click me',
    style: TextStyle(color: Colors.white),
    ),
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: Colors.red,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(20),
    ),
  ),
```

**NOTE**: onPressed accepts a function. It determines what should happen after it is clicked

### <u>ELEVATED BUTTON</u>

**ELEVATED BUTTON** (With elevation or 3d effect)  
Syntax: ElevatedButton(child: ,onPressed: )

```
body: Center(
  child: ElevatedButton(
    child: Text('Click me'),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10),
          )
        ),
        padding: EdgeInsets.all(20),
        elevation: 2
      ),
  ),
),
```

### <u>ICON BUTTON</u>

**Syntax: IconButton(icon: , onPressed: )**

```
body: Center(
  child: IconButton(
    icon: Icon(Icons.add_a_photo),
    onPressed: (){print('Hello icon');},
    color: Colors.blueAccent,
    splashColor: Colors.black,
    iconSize: 100.0,
  )
),
```

## 7. <u>Container Widget</u>

It just wrap around another widget. If you are familiar with the concept of **DIV** in web development, then it works same as that, We use it so that we can give margin, padding, alignment, width and other properties to the element inside it.

**SYNTAX**: Container(child:)

```
body: Container(
  color: Colors.red,
  child: Text('Hello Flutter'),
  margin: EdgeInsets.only(top: 30),
  padding: EdgeInsets.all(50),
),
// EdgeInsets.only, all, FromLTRP
```

Margin is space outside, Padding is space inside

## 8. <u>Text Field</u>

A text field lets the user enter text, either with hardware keyboard
or with an onscreen keyboard.

**SYNTAX**: TextField(decoration: InputDecoration(), onChanged: (value){}, )

```
body: TextField(
  maxLength: 30,
  decoration: InputDecoration(
    labelText: 'Username',
    prefixIcon: Icon(Icons.add_a_photo),
    border: OutlineInputBorder()
    // If you want border
  ),
  onChanged: (value) {
    print(value),
  },
),
```

**NOTE**: There are more property in TextField() and InputDecoration()

## 9. <u>Column and Row</u>

### <u>Column Widget</u>

Till now we were just outputting one widget or element at a time. But this is not happening in real application. A screen contains multiple widgets like
image, Text, button all Together.  
**A Column helps to output widgets in vertical direction i.e. top to bottom**  
`Syntax: Column(children: <Widget>[ ],)`

```
body: Column(
  children: <Widget>[
    Text('Hi this is Alberto'),
    RaisedButton(
      child: Text('Chat'),
      onPressed: () {},
    ),
    Image.asset('images/hummingbird.png',
    width: 100,
    height: 100,
    )
  ],
),
```

**NOTE**: Children is used instead of child Each Widget is separated by comma

### <u>Row Widget</u>

**Same as Column, Row helps to output multiple widgets. BUT A Row helps to output widgets in horizontal direction i.e. left to right**
`Syntax: Row(children:<Widget>[ ],)`

```
body: Row(
  children: <Widget>[
    Text('Hi this is Alberto'),
    RaisedButton(
      child: Text('Chat'),
      onPressed: () {},
    ),
    Image.asset('images/hummingbird.png',
    width: 100,
    height: 100,
    )
  ],
),
```

**NOTE**: We can use row inside column as a widget and vice versa
