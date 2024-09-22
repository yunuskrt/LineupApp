import 'package:flutter/material.dart';
import 'package:lineup/models/avatar.dart';

class PlayerAvatar extends StatelessWidget {
  final Avatar avatar;
  final double outerRadius;
  final double innerRadius;
  const PlayerAvatar({
    super.key,
    required this.avatar,
    this.outerRadius = .25,
    this.innerRadius = .225,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: width * outerRadius,
      backgroundColor: avatar.color,
      child: CircleAvatar(
        backgroundImage: AssetImage(avatar.path),
        radius: width * innerRadius,
        backgroundColor: avatar.color,
      ),
    );
  }
}
