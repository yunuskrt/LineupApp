import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';

class TeamInfo extends StatelessWidget {
  final String title;
  final String lineup;

  const TeamInfo({
    super.key,
    required this.title,
    required this.lineup,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              maxLines: 2,
              style: const TextStyle(
                color: AppColors.primaryLight,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              lineup,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.primaryLight,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
