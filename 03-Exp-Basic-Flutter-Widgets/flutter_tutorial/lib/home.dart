import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Flutter Rocks'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: crossAxisAlignment.center,
        children: [
          Text('Hi, I am learning Flutter'),
          ElevatedButton(onPressed: () {}, child: Text('Submit')),
          Image.asset('assets/images/goku.jpg', height: 100, width: 100)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // child: Text('Add'),
        child: Icon(Icons.message),
        onPressed: () {
          print('Hello');
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}

// body: Center(
//       child: Text(
//     'My First Flutter Application',
//     style: TextStyle(
//       color: Colors.blue,
//       fontSize: 30,
//       fontStyle: FontStyle.italic,
//       fontWeight: FontWeight.bold,
//     ),
//   )),

// child: Image.network(
//   'data:image/png;base64,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'),

// body: Center(child: Image.asset('assets/images/goku.jpg', height: 300)),

// child: TextButton(
//             child: Text('Click me'),
//             onPressed: () {},
//             style: TextButton.styleFrom(
//               primary: Colors.orange,
//               padding: EdgeInsets.all(10),
//               backgroundColor: Colors.black,
//             )),

// body: Center(
//         // child: Icon(Icons.access_alarm, color: Colors.orange, size: 200),
//         child: ElevatedButton(
//           child: Text('Click me'),
//           onPressed: () {
//             print('Hello');
//           },
//           style: ElevatedButton.styleFrom(
//               primary: Colors.orange,
//               elevation: 5,
//               padding: EdgeInsets.all(20),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(20)))),
//         ),
//       ),

// Center(
//         child: IconButton(
//             onPressed: () {
//               print('Icon Button');
//             },
//             icon: Icon(Icons.add_a_photo),
//             color: Colors.blueAccent,
//             iconSize: 100,
//             splashColor: Colors.red),
//       ),

// Container(
//           // color: Colors.red,
//           child: Text('Flutter is Awesome'),
//           padding: EdgeInsets.all(20),
//           margin: EdgeInsets.all(20),
//           width:
//               250, // container width, with no width only takes the minimum space
//           height: 80,
//           // alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: Colors.red,
//             shape: BoxShape.circle,
//           )),

// Container(
//         margin: EdgeInsets.all(20),
//         child: TextField(
//           decoration: InputDecoration(
//             labelText: 'Name',
//             hintText: 'Enter fullname please',
//             prefixIcon: Icon(Icons.person),
//             border: OutlineInputBorder(),
//             // border: InputBorder.none // this will remove the border input
//           ),
//           maxLength: 10,
//           onChanged: (value) {
//             print(value);
//           },
//         ),
//       ),

// Column(
//         children: [
//           Text('Hi, I am learning Flutter'),
//           ElevatedButton(onPressed: () {}, child: Text('Submit')),
//           Image.asset('assets/images/goku.jpg', height: 100, width: 100)
//         ],
//       ),
