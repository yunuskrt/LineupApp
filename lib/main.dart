import 'package:flutter/material.dart';
import 'package:lineup/screens/create_room_screen.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/screens/join_room_screen.dart';
import 'package:lineup/screens/lineup_screen.dart';
import 'package:lineup/screens/match_info_screen.dart';
import 'package:lineup/screens/multiple_menu_screen.dart';
import 'package:lineup/screens/single_filter_screen.dart';

import 'package:lineup/util/colors.dart';
import 'screens/position_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lineup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryLight,
      ),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        LineupScreen.routeName: (context) => LineupScreen(),
        MultipleMenuScreen.routeName: (context) => const MultipleMenuScreen(),
        PositionScreen.routeName: (context) => const PositionScreen(),
        SingleFilterScreen.routeName: (context) => const SingleFilterScreen(),
        MatchInfoScreen.routeName: (context) => const MatchInfoScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
