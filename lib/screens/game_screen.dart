import 'package:flutter/material.dart';
import 'package:lineup/providers/match_provider.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/utils/helpers.dart';
import 'package:lineup/widgets/exit_home_button.dart';
import 'package:lineup/widgets/game_appbar.dart';
import 'package:lineup/widgets/inputs/guess_input.dart';
import 'package:lineup/widgets/lineup_pitch.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  static String routeName = '/game';
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final TextEditingController _playerInputController = TextEditingController();
  Map<String, dynamic>? _searchData;
  List<Map<String, dynamic>>? _players;
  String? _lineup;

  void _showPlayer(int index) {
    setState(() {
      _players![index]['show'] = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchData =
        Provider.of<MatchProvider>(context, listen: false).getSearchData();
    _players = _searchData?['first11'];
    _lineup = _searchData?['lineup'];
  }

  @override
  void dispose() {
    _playerInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MatchProvider>(
      builder: (context, data, child) => Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: GameAppBar(match: data.match!)),
        body: Container(
          color: AppColors.primary,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          data.selectedTeam!.imageLink,
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          data.selectedTeam!.name,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.quaternaryDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 325,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: AppColors.primaryLight,
                                backgroundImage: NetworkImage(
                                  data.selectedTeam!.manager.imageLink,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                data.selectedTeam!.manager.name,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            data.selectedTeam!.lineup,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _searchData == null
                  ? const CircularProgressIndicator()
                  : LineupPitch(
                      lineup: _lineup!,
                      players: _players!,
                    ),
            ],
          ),
        ),
        floatingActionButton: const ExitHomeButton(),
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.transparent,
          child: Row(
            children: [
              Flexible(
                child: GuessInput(controller: _playerInputController),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  String text = _playerInputController.text;
                  if (text.isEmpty) {
                    final snackBar =
                        alertSnackBar('Guess can not be empty!', 'warning');
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else if (_players != null) {
                    int? index = searchPlayer(_players!, text);
                    if (index != null) {
                      _showPlayer(index);
                    } else {
                      final snackBar =
                          alertSnackBar('Player not found!', 'error');
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                  _playerInputController.clear();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primary),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primaryLight),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.done,
                    size: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
