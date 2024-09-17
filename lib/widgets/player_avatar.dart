import 'package:flutter/material.dart';
import 'package:lineup/models/avatar.dart';

class PlayerAvatar extends StatelessWidget {
  final Avatar avatarModel;
  final double outerRadius;
  final double innerRadius;
  const PlayerAvatar({
    super.key,
    required this.avatarModel,
    this.outerRadius = .25,
    this.innerRadius = .225,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: width * outerRadius,
      backgroundColor: avatarModel.color,
      child: CircleAvatar(
        backgroundImage: AssetImage(avatarModel.path),
        radius: width * innerRadius,
        backgroundColor: avatarModel.color,
      ),
    );
  }
}
