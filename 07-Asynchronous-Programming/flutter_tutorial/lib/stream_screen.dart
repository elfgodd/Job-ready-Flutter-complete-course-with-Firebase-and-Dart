import 'dart:async';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class StreamScreen extends StatelessWidget {
  // const StreamScreen({super.key});

  final StreamController streamController = StreamController();

  void streamData() async {
    streamController.stream.listen((data) {
      print(data);
    });
    for (int i = 0; i < 4; i++) {
      streamController.add('You got a message');
      await Future.delayed(Duration(seconds: 2), () {
        print(' Read ');
      });
    }
  }

  Stream myStream() async* {
    for (var i = 0; i < 10; i++) {
      yield i;
      await Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('Add'),
          onPressed: () {
            streamController.add('You have a new notification');
          },
        ),
        appBar: AppBar(
          title: Text('Stream Tutorial'),
        ),
        body: StreamBuilder(
          stream: myStream(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data.toString()),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}


/* void streamData() async {
  streamController.stream.listen((data) {
    print(data);
  });
  for (int i = 0; i < 4; i++) {
    streamController.add('You got a message');
    await Future.delayed(Duration(seconds: 2), () {
      print(' Read ');
    });
  }
} */


/* void streamData() async {
  streamController.stream.listen((data) {
    print(data);
  });
  for (int i = 0; i < 4; i++) {
    streamController.add('You got a message');
    await Future.delayed(Duration(seconds: 2));
  }
} */
