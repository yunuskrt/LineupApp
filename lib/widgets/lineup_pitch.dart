import 'package:flutter/material.dart';
import 'package:lineup/models/pitch_player.dart';
import 'package:lineup/widgets/lineup_player.dart';

class LineupPitch extends StatelessWidget {
  final List<Map<String, dynamic>> players;
  final String lineup;
  const LineupPitch({
    super.key,
    required this.players,
    required this.lineup,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 490,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: players.map(
          (player) {
            return LineupPlayer(
              lineup: lineup,
              player: PitchPlayer.fromJson(player),
            );
          },
        ).toList(),
      ),
    );
  }
}
