import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaprovider/blocs/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListaBotones(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_down_outlined),
        onPressed: () {
          Navigator.pushNamed(context, 'second');
        },
      ),
    );
  }
}

class ListaBotones extends StatelessWidget {
  const ListaBotones({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Column(
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            if (theme.getTheme() == ThemeData.light()) {
              theme.setTheme(ThemeData.dark());
            } else {
              theme.setTheme(ThemeData.light());
            }
          },
          child:
              const Text('Change Theme', style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
