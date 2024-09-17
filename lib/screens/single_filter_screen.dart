import 'package:flutter/material.dart';
import 'package:lineup/screens/game_screen.dart';

class SingleFilterScreen extends StatelessWidget {
  static String routeName = '/single-filter-screen';
  const SingleFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Navigator.pushNamed(context, MultipleMenuScreen.routeName);
          Navigator.pushNamed(context, GameScreen.routeName);
        },
        child: const Text('Go To Game Screen'),
      ),
    );
  }
}
