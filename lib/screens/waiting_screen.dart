import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lineup/util/avatars.dart';
import 'package:lineup/widgets/avatar.dart';

class WaitingScreen extends StatefulWidget {
  static String routeName = '/waiting';

  const WaitingScreen({super.key});

  @override
  State<WaitingScreen> createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  int _index = 0;
  final int _modValue = getAvatarsLength();
  Timer? _timer;

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(
          () {
            _index = (_index + 1) % _modValue;
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Avatar(
        avatarModel: getAvatar(_index),
      ),
    );
  }
}
