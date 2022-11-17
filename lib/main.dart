import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Pandas Demo'),
          ),
          body: Container(
            child: Image.asset('assets/pandas.png'),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(25),
                right: Radius.circular(25),
              ),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
            ),
          )),
    );
  }
}
