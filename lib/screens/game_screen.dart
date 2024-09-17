import 'package:flutter/material.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/views/waiting_view.dart';

class GameScreen extends StatefulWidget {
  static String routeName = '/game';
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final bool isWaiting = true;
  @override
  Widget build(BuildContext context) {
    return isWaiting
        ? WaitingView(
            onExit: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, HomeScreen.routeName, (route) => false);
            },
          )
        : const Scaffold(
            body: Center(
              child: Text('Game Screen'),
            ),
          );
  }
}
