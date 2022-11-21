import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

class Backgrounds extends StatelessWidget {
  const Backgrounds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.yellow,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Text('Hello World'),
        Text('Hello World'),
        Expanded(child: Container()),
        Icon(
          Icons.keyboard_arrow_down,
          size: 100,
          color: Colors.white,
        )
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Backgrounds(),
        MainContent(),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'page3');
          },
          child: Text(
            'Go to Page 3',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
