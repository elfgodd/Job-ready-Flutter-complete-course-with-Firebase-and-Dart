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

## 2. <u>Push And Pop method</u>

## 3. <u>Understanding Named Route</u>

If you need to navigate to the same screen in many parts of your app, the previous approach can result in code duplication. The solution is to define a named route, and use the named route for navigation
`SYNTAX: Navigator.pushNamed()`

- First we have to create two screen which we have already done i.e home and contact
- Define the routes by providing additional properties in MaterialApp widget:
  initialRoute and routes

```
MaterialApp(
  title: 'Navigation Basics',
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/contact': (context) => ContactUs()
  },
)
```

Note:
The initialRoute defines which route the app should start with, Remove the home property.  
The routes property defines defines the available named routes and the widgets to build when navigating to those routes.

### <u>Navigate to the second screen</u>

With the widgets and routes in place, trigger navigation by using the
Navigator.pushName()

```
Center(
  child: RaisedButton(
    child: Text('Contact Us'),
    onPressed: () {
      Navigator.pushNamed(context, '/contact');
    },
  ),
),
```

To navigate back to the first screen use the Navigator.pop() like before

NOTE: You can use Navigator.pushReplacementNamed() to clear the stack
that means we cannot go back

### <u>Using static modifier to call naming routes:</u>

If we use the routes method to navigate from one page to another with a naming concept
then we have to remember the string that we have provided to its route. When there are
multiple screens in an application then it becomes tough to remember each string. So we create one string datatype of it with the static modifier so that we can assign
it by directly calling it through its class.

```
class Home extends StatelessWidget {
  static String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold
  }
}
```

```
class Second extends StatelessWidget {
  static String id = 'second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    )
  }
}
```

As you can see above we have used a static modifier with string datatype to both
our screen and assign it with the string variable.

As you can see now easily remember the routes by directly remembering its class
name as shown above we have used Home.id and Second.id in place of using naming
string routes and remembering each string name.

```
MaterialApp(
  initialRoute: Home.id,
  routes: {
    Home.id: (context)=>Home(),
    Second.id: (context)=>()
  },
);
```

We can directly access it easily and can navigate from one page to another with the same class and the static id

```
onPressed: () {
  // Navigate to next page ...
  Navigator.pushNamed(context, Second.id);
},
```
