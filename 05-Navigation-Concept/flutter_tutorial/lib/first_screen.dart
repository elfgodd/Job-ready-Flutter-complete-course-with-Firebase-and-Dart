import 'package:flutter/material.dart';
import 'package:flutter_tutorial/second_screen.dart';
import 'package:flutter_tutorial/third_screen.dart';

class FirstScreen extends StatefulWidget {
  static String id = '/first_Screen';

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // const FirstScreen({super.key});
  int _index = 0;

  List pages = [
    SecondScreen(),
    ThirdScreen(),
    ThirdScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Alberto Guzman'),
              accountEmail: Text('alberto@orbitbase.io'),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.android)),
            ),
            ListTile(
                title: Text('Second Screen'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                }),
            ListTile(
                title: Text('Contact Us'),
                leading: Icon(Icons.send),
                onTap: () {}),
            ListTile(
                title: Text('Second Screen'),
                leading: Icon(Icons.call),
                onTap: () {}),
          ],
        )),
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: pages[_index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contact_mail), label: 'Contact'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
            ],
            onTap: (index) {
              print(index);
              setState(() {
                _index = index;
              });
            }));
  }
}

// Push and PushReplacement


// body: Center(
//           child: ElevatedButton(
//               onPressed: () async {
                // Navigator.pushNamed(context, SecondScreen.id, arguments: {
                //   'name': 'Alberto Guzman',
                //   'founder': '@OrbitBaseIO'
                // });

                // Push method
                // bool status = await Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()));
                // print(status);

                // MaterialPageRoute(
                //     builder: (context) =>
                //         SecondScreen(name: 'Alberto Guzman')));
                // Navigator.pushNamed(context, '/second_screen');
                // Navigator.pushNamed(context, ThirdScreen.id);
                // Navigator.pushReplacementNamed(context, '/second_screen');

                // Navigator.pushReplacementNamed(context, MaterialPageRoute(builder: (context) => SecondScreen()));
        //       },
        //       child: Text('Go to Second Screen')),
        // ),