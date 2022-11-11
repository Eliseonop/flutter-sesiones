import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class AsincronaScreen extends StatelessWidget {
  const AsincronaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certus'),
        centerTitle: true,
        backgroundColor: const Color(0xff0E2D6D),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Card(
                shadowColor: const Color(0xff0E2D6D),
                elevation: 20,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.network(
                        'https://www.certus.edu.pe/wp-content/uploads/2021/07/logo-certus-compartir.jpg',
                        fit: BoxFit.cover,
                      ),
                      title: const Center(
                          child: Text(
                        'Instituto Certus',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                      subtitle: const Text(
                          'Aliqua Lorem esse qui est amet ex Lorem cupidatat eiusmod amet consectetur tempor do velit. Ad esse aute ea irure non fugiat enim aute adipisicing tempor.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            QuickAlert.show(
                              confirmBtnColor: const Color(0xff0E2D6D),
                              confirmBtnText: 'Ok',
                              context: context,
                              type: QuickAlertType.success,
                            );
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              color: Color(0xff0E2D6D),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
