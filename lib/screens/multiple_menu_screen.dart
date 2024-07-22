import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/widgets/cards/pick_menu_card.dart';
import 'package:lineup/widgets/lineup_title.dart';

class MultipleMenuScreen extends StatelessWidget {
  static String routeName = '/multiple-menu';
  const MultipleMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const LineupTitle(), backgroundColor: AppColors.primary),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: PickMenuCard(
                    icon: Icons.add_box,
                    text: 'Create Room',
                    onTapped: () {
                      print('create room tapped');
                    },
                  ),
                ),
                Expanded(
                  child: PickMenuCard(
                    icon: Icons.group_add,
                    text: 'Join Room',
                    onTapped: () {
                      print('join room tapped');
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PickMenuCard(
              icon: Icons.play_circle_fill,
              text: 'Play with Others',
              onTapped: () {
                print('play with others tapped');
              },
            ),
          )
        ],
      ),
    );
  }
}
