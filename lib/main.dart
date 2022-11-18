import 'package:flutter/material.dart';
import 'package:session8/screens/basic_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materail App',
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => BasicDesignScreen()},
    );
  }
}

// class PantallaTemporal extends StatelessWidget {
//   const PantallaTemporal({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('Hola Mundo'),
//         Text('Hola Mundo'),
//       ],
//     );
//   }
// }
