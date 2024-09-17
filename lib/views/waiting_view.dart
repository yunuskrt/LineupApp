import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lineup/util/avatars.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/widgets/player_avatar.dart';

class WaitingView extends StatefulWidget {
  final VoidCallback onExit;
  const WaitingView({super.key, required this.onExit});

  @override
  State<WaitingView> createState() => _WaitingViewState();
}

class _WaitingViewState extends State<WaitingView> {
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
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PlayerAvatar(
              avatarModel: getAvatar(_index),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '1/2 players joined',
              style: TextStyle(
                color: AppColors.tertiaryDark,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Waiting for other players...',
              style: TextStyle(
                color: AppColors.tertiaryDark,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.danger,
        foregroundColor: AppColors.primaryLight,
        splashColor: AppColors.danger,
        onPressed: widget.onExit,
        child: const Icon(Icons.exit_to_app),
      ),
    );
  }
}
