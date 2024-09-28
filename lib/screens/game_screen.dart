import 'package:flutter/material.dart';
import 'package:lineup/providers/match_provider.dart';
import 'package:lineup/utils/colors.dart';
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

  @override
  void dispose() {
    _playerInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchData =
        Provider.of<MatchProvider>(context, listen: false).getSearchData();
    final players = searchData?['first11'];
    final lineup = searchData?['lineup'];

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
              searchData == null
                  ? const CircularProgressIndicator()
                  : LineupPitch(
                      lineup: lineup!,
                      players: players!,
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
                  print(text);
                  _playerInputController.clear();
                  print(searchData);
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
