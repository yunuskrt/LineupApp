import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/utils/images.dart';
import 'package:lineup/models/match.dart';

class GameAppBar extends StatelessWidget {
  final Match match;
  const GameAppBar({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.6,
              image: AssetImage(Images.leagues[match.league]!['header']!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.network(
                    match.home.imageLink,
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    match.home.name,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.primaryLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '${match.home.score.toString()} - ${match.away.score.toString()}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: AppColors.primaryLight,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${match.league} | ${match.round}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.primaryLight,
                        ),
                      ),
                      Text(
                        match.date,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.primaryLight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Image.network(
                    match.away.imageLink,
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    match.away.name,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.primaryLight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
