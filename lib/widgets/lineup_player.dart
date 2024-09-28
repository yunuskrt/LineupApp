import 'package:flutter/material.dart';
import 'package:lineup/models/pitch_player.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/utils/lineups.dart';
// import 'package:lineup/utils/positions.dart';

class LineupPlayer extends StatelessWidget {
  final PitchPlayer player;
  final String lineup;
  const LineupPlayer({
    super.key,
    required this.player,
    required this.lineup,
  });

  @override
  Widget build(BuildContext context) {
    final coordinates = Lineups.lineups[lineup]![player.position];
    return Positioned(
      left: coordinates!.left,
      top: coordinates.top,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          player.show
              ? CircleAvatar(
                  radius: 12.0,
                  backgroundColor: AppColors.quaternaryLight,
                  backgroundImage: NetworkImage(player.url!),
                )
              : const CircleAvatar(
                  radius: 12.0,
                  backgroundColor: AppColors.quaternaryDark,
                  child:
                      Icon(Icons.question_mark, color: AppColors.primaryLight),
                ),
          player.show
              ? SizedBox(
                  width: 35.0,
                  height: 20.0,
                  child: Center(
                    child: Text(
                      player.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 6,
                        color: AppColors.primaryDark,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : const SizedBox(
                  width: 35.0,
                  height: 20.0,
                ),
        ],
      ),
    );
  }
}
