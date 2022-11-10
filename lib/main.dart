import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView example'),
        ),
        body: ListView(
          children: const [
            Template(
              text: 'Child 1',
            ),
            Template(
              text: 'Child 2',
            ),
            Template(
              text: 'Child 3',
            ),
            Template(
              text: 'Child 4',
            ),
            Template(
              text: 'Child 5',
            ),
          ],
        ),
      ),
    );
  }
}

class Template extends StatelessWidget {
  final String text;
  const Template({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        style: const TextStyle(fontSize: 80, color: Colors.lightBlue),
      ),
    );
  }
}
