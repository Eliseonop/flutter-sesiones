import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // paciado entre los elementos

        children: [
          const Image(
            image: AssetImage('assets/landscape.jpg'),
            // agregar margenes
          ),
          const SizedBox(height: 30.0),
          Calification(),
          const SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Icon(Icons.call, color: Colors.blue),
                    const SizedBox(height: 8),
                    const Text('CALL'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Icon(Icons.near_me, color: Colors.blue),
                    const SizedBox(height: 8),
                    const Text('ROUTE'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Icon(Icons.share, color: Colors.blue),
                    const SizedBox(height: 8),
                    const Text('SHARE'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Parrafo(),
        ],
      ),
    );
  }
}

class Calification extends StatelessWidget {
  const Calification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // primer children column con 2 text
        Column(
          children: [
            const Text('Oeschinen Lake Campground'),
            const Text('Kandersteg, Switzerland'),
          ],
        ),

        // segundo children con 1 icono y 1 text
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ],
    );
  }
}

class Parrafo extends StatelessWidget {
  const Parrafo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget aliquam tincidunt, nunc nisl',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
