import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircleAvatar(
        backgroundColor: Colors.brown,
        radius: 25,
        backgroundImage: AssetImage('assets/livakovic.png'),
      )),
    );
  }
}
