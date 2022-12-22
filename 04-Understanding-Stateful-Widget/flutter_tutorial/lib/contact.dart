import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String name = 'Guest';

  @override
  Widget build(BuildContext context) {
    print('Screen Building');
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
        ),
        body: Column(children: [
          TextField(onChanged: (value) {
            setState(() {
              name = value;
            });
            print('SetState is Called');
          }),
          Text('Hello $name'),
        ]));
  }
}
