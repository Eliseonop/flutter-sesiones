import 'package:flutter/material.dart';
import 'package:sincrono_validation_one/app.dart';

import 'package:sincrono_validation_one/productos.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text('Tienda Panda '),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ), //AppBar
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //UserAccountsDrawerHeader
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.amber,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.amber,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: const ListTile(
                title: Text('Salir'),
                leading: Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 175, 76, 76),
                ),
              ),
            ),
          ],
        ), //ListView
      ), //Drawer
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Los Mejores Productos'),
          ), //Padding
          Container(
            height: 620,
            child: Products(),
          ), //Container
        ],
      ),
    ); //Scaffold
  }
}
