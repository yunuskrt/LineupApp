import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/util/images.dart';
import 'package:lineup/widgets/header_text.dart';
import 'package:lineup/models/match.dart';
import 'package:lineup/widgets/match_detail_row.dart';
import 'package:lineup/widgets/pick_image.dart';
import 'package:lineup/widgets/team_info.dart';

class MatchInfoCard extends StatelessWidget {
  final Match match;
  final void Function(String) onTeamSelect;
  final VoidCallback onPlay;
  final bool homeSelected;
  final bool awaySelected;
  const MatchInfoCard({
    super.key,
    required this.match,
    required this.onTeamSelect,
    required this.onPlay,
    required this.homeSelected,
    required this.awaySelected,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.75,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.05,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            opacity: 0.7,
            image: AssetImage(Images.leagues[match.league]!['card']!),
            fit: BoxFit.cover,
          ),
        ),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 140,
                      child: Column(
                        children: [
                          PickImage(
                            onTapped: () => onTeamSelect('home'),
                            selected: homeSelected,
                            imageUrl: match.home.imageLink,
                          ),
                          TeamInfo(
                            title: match.home.name,
                            lineup: match.home.lineup,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              HeaderText(
                                text: match.home.score == null ||
                                        match.away.score == null
                                    ? 'VS'
                                    : '${match.home.score} - ${match.away.score}',
                                fontSize: 30,
                              ),
                              match.home.halfScore == null ||
                                      match.away.halfScore == null
                                  ? const SizedBox()
                                  : Text(
                                      '(${match.home.halfScore} - ${match.away.halfScore})',
                                      style: const TextStyle(
                                        color: AppColors.primaryLight,
                                        fontSize: 14,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 140,
                      child: Column(
                        children: [
                          PickImage(
                            onTapped: () => onTeamSelect('away'),
                            selected: awaySelected,
                            imageUrl: match.away.imageLink,
                          ),
                          TeamInfo(
                            title: match.away.name,
                            lineup: match.away.lineup,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.primaryDark.withOpacity(0.7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MatchDetailRow(
                                  icon: 'assets/icons/league.svg',
                                  value: match.league,
                                ),
                                MatchDetailRow(
                                  icon: 'assets/icons/season.svg',
                                  value: match.season,
                                ),
                                MatchDetailRow(
                                  icon: 'assets/icons/round.svg',
                                  value: match.round,
                                ),
                                MatchDetailRow(
                                  icon: 'assets/icons/date.svg',
                                  value: match.date,
                                ),
                                MatchDetailRow(
                                  icon: 'assets/icons/stadium.svg',
                                  value: match.stadium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: onPlay,
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(12.0),
                              ),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primary),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaryLight),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: const BorderSide(
                                      color: AppColors.quaternaryDark),
                                ),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: AppColors.primaryLight,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Play',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
