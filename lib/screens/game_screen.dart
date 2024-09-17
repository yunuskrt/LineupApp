import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:lineup/models/match.dart';
import 'package:http/http.dart' as http;
import 'package:lineup/widgets/lineup_title.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/views/waiting_view.dart';

class GameScreen extends StatefulWidget {
  static String routeName = '/game';
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Future<Match> futureMatch;
  Future<Match> fetchMatch() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/api/v1/matches'));
    if (response.statusCode == 200) {
      return Match.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    futureMatch = fetchMatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const LineupTitle(), backgroundColor: AppColors.primary),
      body: Center(
        child: FutureBuilder<Match>(
          future: futureMatch,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data!.toJson());
              return Text(snapshot.data!.league);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return WaitingView(
              onExit: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomeScreen.routeName, (route) => false);
              },
            );
          },
        ),
      ),
    );
  }
}
