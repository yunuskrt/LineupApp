import 'package:flutter/material.dart';
import 'package:lineup/components/game_mode_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cardData = [
      {
        'svgPath': 'assets/singleplayer.svg',
        'headerText': 'Single Player - Squad',
        'subText': 'Guess the lineup of a selected match',
      },
      {
        'svgPath': 'assets/multiplayer.svg',
        'headerText': 'Multiplayer - Squad',
        'subText':
            'Play with other players online. Guess the lineup od a selected match',
      },
      {
        'svgPath': 'assets/single-jersey.svg',
        'headerText': 'Single Player - Player',
        'subText': 'Guess the players of a given question',
      },
      {
        'svgPath': 'assets/multi-jersey.svg',
        'headerText': 'Multiplayer - Player',
        'subText':
            'Play with other players online. Guess the players of a given question',
      },
    ];
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemCount: cardData.length,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 15),
      itemBuilder: (BuildContext context, int index) {
        return GameModeCard(
          svgPath: cardData[index]['svgPath']!,
          headerText: cardData[index]['headerText']!,
          subText: cardData[index]['subText']!,
        );
      },
    );
  }
}
