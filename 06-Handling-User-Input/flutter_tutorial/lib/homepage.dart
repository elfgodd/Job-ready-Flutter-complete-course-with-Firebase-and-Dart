import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Handler User Input'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'Field is requred';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    print('Name Field is Saved');
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Write your full name',
                    // icon: Icon(Icons.person),

                    // This places the Icon inside the border
                    prefixIcon: Icon(Icons.person),
                    // border: InputBorder.none
                    border: OutlineInputBorder(),

                    // This places the Icon on the right side at the end
                    // suffixIcon: Icon(Icons.person),

                    // border: OutlineInputBorder(),
                  ),
                  // This only works on Mobile Emulators
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.length < 3) {
                      return 'Password should be more than 3 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    print('Password Field is Saved');
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    helperText: "Password > 3 characters",
                  ),
                  obscureText: true,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() == true) {
                      _formKey.currentState!.save();
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('Thank you'),
                                content: Text('Form Submitted Successfully'),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Okay'))
                                ],
                                backgroundColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ));
                      print('Form Submitted Successfully');
                    }
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          ),
        ));
  }
}

/* import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  TextEditingController nameController = TextEditingController();
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Handler User Input'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nameController.text,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              TextField(
                /* onChanged: (value) {
                  name = value;
                }, */
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  print(nameController.text);
                },
                child: Text('Print'),
              )
            ],
          ),
        ));
  }
} */

/* import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  TextEditingController nameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Handler User Input'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                },
                child: Text('Print'),
              )
            ],
          ),
        ));
  }
} */
