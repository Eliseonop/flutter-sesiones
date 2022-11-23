import 'dart:js';

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var currentPage = DrawerSection.dashboard;

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
          const Text(
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
    padding: const EdgeInsets.only(top: 20.0),
    child: Column(
      children: [
        menuItemsArgument(1, 'Dashboard', Icons.dashboard, true, context),
        menuItemsArgument(2, 'Events', Icons.event, true, context),
        menuItemsArgument(3, 'Settings', Icons.settings, true, context),
        menuItemsArgument(4, 'Notes', Icons.note, true, context),
        menuItemsArgument(5, 'Contacts', Icons.contacts, false, context),
        menuItemsArgument(
            6, 'Notifications', Icons.notifications, true, context),
      ],
    ),
  );
}

Widget menuItemsArgument(
    int id, String title, IconData icon, bool selected, context) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
        setState(() {
          switch (currentPage) {
            case DrawerSection.dashboard:
              Navigator.pushNamed(context, '/dashboard');
              break;
            case DrawerSection.events:
              Navigator.pushNamed(context, '/events');
              break;
            case DrawerSection.settings:
              Navigator.pushNamed(context, '/settings');
              break;
            case DrawerSection.notes:
              Navigator.pushNamed(context, '/notes');
              break;
            case DrawerSection.contacts:
              Navigator.pushNamed(context, '/contacts');
              break;
            case DrawerSection.notifications:
              Navigator.pushNamed(context, '/notifications');
              break;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    ),
  );
}

enum DrawerSection {
  dashboard,
  events,
  settings,
  notes,
  contacts,
  notifications,
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
