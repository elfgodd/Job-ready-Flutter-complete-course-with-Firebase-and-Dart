import 'package:flutter/material.dart';

class MyStatefulScreen extends StatefulWidget {
  String userName;

  MyStatefulScreen({super.key, this.userName = 'Alberto Guzman'});

  @override
  State<MyStatefulScreen> createState() => _MyStatefulScreenState();
}

class _MyStatefulScreenState extends State<MyStatefulScreen> {
  List<String> names = ['Alberto', 'Elon', 'Bill'];
  int i = 0;
  Color color = Colors.red;

  String? name;

  @override
  void initState() {
    super.initState();
    print('INIT STATE');
    this.name = widget.userName;
  }

  @override
  void didChangeDependencies() {
    print('DidChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyStatefulScreen oldWidget) {
    // TODO: implement didUpdateWidget
    if (this.widget.userName != oldWidget.userName) {
      print('DIDUPDATECHANGE');
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('Deactive');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('DISPOSE');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Build Function');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget - $name'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        backgroundColor: color,
        onPressed: () {
          setState(() {
            color = Colors.green;
          });
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My name is ${names[i]}'),
            ElevatedButton(
                onPressed: () {
                  if (i < names.length - 1) {
                    setState(() {
                      i++;
                    });
                  }
                },
                child: Text('Next')),
            ElevatedButton(
                onPressed: () {
                  if (i != 0) {
                    setState(() {
                      i--;
                    });
                  }
                },
                child: Text('Go Back')),
          ],
        ),
      ),
    );
  }
}
