import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:lineup/models/match.dart';
import 'package:http/http.dart' as http;
import 'package:lineup/providers/filter_provider.dart';
import 'package:lineup/util/helpers.dart';
import 'package:lineup/widgets/avatar_loading.dart';
import 'package:lineup/widgets/cards/match_info_card.dart';
import 'package:lineup/widgets/exit_home_button.dart';
import 'package:lineup/widgets/lineup_title.dart';
import 'package:lineup/util/colors.dart';
import 'package:provider/provider.dart';

class MatchInfoScreen extends StatefulWidget {
  static String routeName = '/match-info-screen';
  const MatchInfoScreen({super.key});

  @override
  State<MatchInfoScreen> createState() => _MatchInfoScreenState();
}

class _MatchInfoScreenState extends State<MatchInfoScreen> {
  late Future<Match> futureMatch;
  Future<Match> fetchMatch() async {
    final query =
        Provider.of<FilterProvider>(context, listen: false).getQuery();
    final response =
        await http.get(Uri.parse('http://localhost:8080/api/v1/matches$query'));
    if (response.statusCode == 200) {
      return Match.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  String selectedTeamKey = '';

  @override
  void initState() {
    super.initState();
    futureMatch = fetchMatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LineupTitle(),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: FutureBuilder<Match>(
          future: futureMatch,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MatchInfoCard(
                match: snapshot.data!,
                homeSelected: selectedTeamKey == 'home',
                awaySelected: selectedTeamKey == 'away',
                onPlay: () {
                  if (selectedTeamKey != 'home' && selectedTeamKey != 'away') {
                    final snackBar =
                        alertSnackBar('Pick a team to play!', 'error');
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    print('match will be saved to provider');
                  }
                },
                onTeamSelect: (team) {
                  setState(() {
                    selectedTeamKey = team == selectedTeamKey ? '' : team;
                  });
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return const AvatarLoading();
          },
        ),
      ),
      floatingActionButton: const ExitHomeButton(),
    );
  }
}
