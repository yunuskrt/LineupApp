import 'package:flutter/material.dart';
import 'package:lineup/screens/lineup_screen.dart';
import 'package:lineup/screens/multiple_menu_screen.dart';
import 'package:lineup/widgets/cards/game_mode_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3),
      child: Column(
        children: [
          GameModeCard(
            svgPath: 'assets/singleplayer.svg',
            headerText: 'Single Player',
            subText: 'Guess the lineup of a selected match',
            onTapped: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, LineupScreen.routeName, (route) => false);
            },
          ),
          const SizedBox(height: 3),
          GameModeCard(
            svgPath: 'assets/multiplayer.svg',
            headerText: 'Multiplayer',
            subText:
                'Play with other players online. Guess the lineup of a selected match',
            onTapped: () {
              Navigator.pushNamed(context, MultipleMenuScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
