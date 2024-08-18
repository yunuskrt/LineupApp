import 'package:flutter/material.dart';
import 'package:lineup/models/player_avatar_model.dart';

class PlayerAvatar extends StatelessWidget {
  final PlayerAvatarModel playerAvatarModel;
  final double outerRadius;
  final double innerRadius;
  const PlayerAvatar({
    super.key,
    required this.playerAvatarModel,
    this.outerRadius = .25,
    this.innerRadius = .225,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: width * outerRadius,
      backgroundColor: playerAvatarModel.color,
      child: CircleAvatar(
        backgroundImage: AssetImage(playerAvatarModel.path),
        radius: width * innerRadius,
        backgroundColor: playerAvatarModel.color,
      ),
    );
  }
}
