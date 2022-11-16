import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApplicacion(),
    );
  }
}

class HomePage extends StatelessWidget {
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  double suma = 0;
  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Nombre es Eliseo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: n1,
              keyboardType: TextInputType.number,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          suma = double.parse(n1.text) + double.parse(n2.text);
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Resultado'),
                  content: Text('La suma es: $suma'),
                );
              });
        },
      ),
    );
  }
}

// en esta actividad generara 2 columnas y se realizaran de la manera

// - el estilo de la columna   sera a la izaquierda
// - En la primera columna colocara su edad
// - En la segunda columna colocara su nombre
// - En la tercera columna colocara su apellido y nombre

class MyApplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Nombre es Eliseo'),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Edad'),
                Text('Nombre'),
                Text('Apellido y Nombre'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('20'),
                Text('Eliseo'),
                Text('Cruz'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
