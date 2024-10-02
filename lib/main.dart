import 'package:flutter/material.dart';
import 'package:lineup/providers/filter_provider.dart';
import 'package:lineup/providers/match_provider.dart';
import 'package:lineup/screens/create_room_screen.dart';
import 'package:lineup/screens/game_screen.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/screens/join_room_screen.dart';
import 'package:lineup/screens/match_info_screen.dart';
import 'package:lineup/screens/multiple_menu_screen.dart';
import 'package:lineup/screens/single_filter_screen.dart';
import 'package:lineup/screens/splash_screen.dart';

import 'package:lineup/utils/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => MatchProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => FilterProvider(),
      ),
    ],
    child: const MyApp(),
  ));
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
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        MultipleMenuScreen.routeName: (context) => const MultipleMenuScreen(),
        SingleFilterScreen.routeName: (context) => const SingleFilterScreen(),
        MatchInfoScreen.routeName: (context) => const MatchInfoScreen(),
        GameScreen.routeName: (context) => const GameScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
