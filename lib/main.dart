import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaprovider/blocs/theme.dart';
import 'package:temaprovider/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChanger(ThemeData.light()),
      child: MatAppTheme(),
    );
  }
}

class MatAppTheme extends StatelessWidget {
  const MatAppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.getTheme(),
      home: const HomeScreen(),
    );
  }
}
