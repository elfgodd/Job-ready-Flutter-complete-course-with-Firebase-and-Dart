import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatefulWidget {
  const FutureBuilderScreen({super.key});

  @override
  State<FutureBuilderScreen> createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  Future<void> getData() async {
    try {
      final userId = await Future.delayed(Duration(seconds: 3), () {
        print('User Id - 1');
        return 1;
      });

      await Future.delayed(Duration(seconds: 2), () {
        print('Hey its Flutter User $userId');
      });
    } catch (e) {
      print(e);
    }

    print('Random line of code');
  }

  Future<String> getUserName() async {
    final String user = await Future.delayed(Duration(seconds: 2), () {
      return 'Hello Alberto Guzman';
    });

    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Screen'),
      ),
      body: FutureBuilder(
          future: getUserName(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
