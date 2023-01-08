import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  Future<void> getData() async {
    Future.delayed(Duration(seconds: 3), () {
      print('User Id - 1');
    }).then((value) {
      Future.delayed(Duration(seconds: 2), () {
        print('User Id - 2');
      });
    }).catchError((error) {
      print(error);
    });

    print('Random line of code');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              getData();
            },
            child: Text('Click here')),
      ),
    );
  }
}


// Without Then / catchError

/* import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  
  Future<void> getData() async {

    Future.delayed(Duration(seconds: 3), () {
      print('User Id - 1');
    }).then((value) {});

    Future.delayed(Duration(seconds: 2), () {
      print('User Id - 2');
    });

    print('Random line of code');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              getData();
            },
            child: Text('Click here')),
      ),
    );
  }
}
 */