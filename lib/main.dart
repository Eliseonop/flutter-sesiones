import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Mi Formulario';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: const PrimerFormulario(),
      ),
    );
  }
}

class PrimerFormulario extends StatefulWidget {
  const PrimerFormulario({super.key});

  @override
  State<PrimerFormulario> createState() => _PrimerFormularioState();
}

class _PrimerFormularioState extends State<PrimerFormulario> {
  bool _bicicleta = false;
  bool _motocicleta = false;
  bool _automovil = false;
  bool _nada = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese su nombre',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese su clave',
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            // agregar un margen

            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text('Que usas para movilizarte',
                      style: TextStyle(fontSize: 20))),
              CheckboxListTile(
                  title: const Text('Bicicleta'),
                  value: _bicicleta,
                  selected: _bicicleta,
                  onChanged: (bool? value) {
                    setState(() {
                      _bicicleta = value!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text('MotoCicleta'),
                  value: _motocicleta,
                  selected: _bicicleta,
                  onChanged: (onChanged) {
                    setState(() {
                      _motocicleta = onChanged!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text('Automovil'),
                  value: _automovil,
                  selected: _bicicleta,
                  onChanged: (onChanged) {
                    setState(() {
                      _automovil = onChanged!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text('Nada'),
                  value: _nada,
                  selected: _bicicleta,
                  onChanged: (onChanged) {
                    setState(() {
                      _nada = onChanged!;
                    });
                  }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
            child: ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: const Text('Enviar'),
            ),
          ),
        ]);
  }
}
