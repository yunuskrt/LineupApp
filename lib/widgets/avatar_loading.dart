import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lineup/util/avatars.dart';
import 'package:lineup/widgets/player_avatar.dart';

class AvatarLoading extends StatefulWidget {
  const AvatarLoading({super.key});

  @override
  State<AvatarLoading> createState() => _AvatarLoadingState();
}

class _AvatarLoadingState extends State<AvatarLoading> {
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
    return PlayerAvatar(
      avatar: getAvatar(_index),
    );
  }
}
