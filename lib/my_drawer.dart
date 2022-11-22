import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
              child: Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/pandas.png'),
                fit: BoxFit.cover,
              ),
            ),
          )),
          Text(
            'Pandas',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

Widget MyDrawerList() {
  return Container(
    padding: EdgeInsets.only(top: 20.0),
    child: Column(children: [
      Dashboard(),
      Divider(),
      Events(),
      Divider(),
      Settings(),
      Divider(),
      Notes(),
      Divider(),
      Contacts(),
      Divider(),
      Notifications(),
    ]),
  );
}

Widget Dashboard() {
  return Material(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.dashboard,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'Dashboard',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Contacts() {
  return Material(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.contacts,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Settings() {
  return Material(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.settings,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Events() {
  return Material(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.event,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'Events',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Notes() {
  return Material(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.note,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'Notes',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Notifications() {
  return Material(
    child: InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Expanded(
              child: Icon(
                Icons.notifications,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                'Notifications',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// 1. dashboard
// 2. contacts
// 3. events
// 4. notes
// 5. settings
// 6. notifications