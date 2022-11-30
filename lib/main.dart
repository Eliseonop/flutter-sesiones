import 'package:flutter/material.dart';
import 'package:sincrono_validation_one/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}