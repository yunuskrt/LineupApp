import 'package:flutter/material.dart';
import 'package:lineup/widgets/guess_input.dart';
import 'package:lineup/widgets/alerts/quit_game_alert.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/widgets/player.dart';

class LineupScreen extends StatefulWidget {
  static String routeName = '/lineup';
  final List<Map<String, dynamic>> data = [
    {
      'playerName': 'Livakovic',
      'position': 'GK',
      'playerUrl': 'https://im.mackolik.com/img/Oyuncu/241447_01.jpg?v=2.125',
    },
    {
      'playerName': 'Rodrigo Becao',
      'position': 'LCB',
      'playerUrl': 'https://im.mackolik.com/img/Oyuncu/440397_01.jpg?v=2.125',
    },
    {
      'playerName': 'A.Djiku',
      'position': 'RCB',
      'playerUrl': 'https://im.mackolik.com/img/Oyuncu/234379_01.jpg?v=2.125',
    }
  ];
  LineupScreen({
    super.key,
  });

  @override
  State<LineupScreen> createState() => _LineupScreenState();
}

class _LineupScreenState extends State<LineupScreen> {
  final TextEditingController _playerInputController = TextEditingController();

  List<CustomPlayerWidget> _playerWidgets = [];

  @override
  void initState() {
    super.initState();
    _playerWidgets = List.generate(
      widget.data.length,
      (index) {
        final playerData = widget.data[index];
        return CustomPlayerWidget(
          playerName: playerData['playerName'],
          position: playerData['position'],
          playerUrl: playerData['playerUrl'],
        );
      },
    );
  }

  @override
  void dispose() {
    _playerInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soccer Team'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
              opacity: 0.8),
        ),
        child: Stack(children: _playerWidgets),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.danger,
        foregroundColor: AppColors.primaryLight,
        splashColor: AppColors.danger,
        onPressed: () => _dialogBuilder(context),
        child: const Icon(Icons.exit_to_app),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Flexible(
              child: GuessInput(controller: _playerInputController),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                String index = _playerInputController.text;
                print(index);
                _playerInputController.clear();
                // trigger the player to show
                // _playerWidgets[1].show();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.primary),
                foregroundColor:
                    MaterialStateProperty.all<Color>(AppColors.primaryLight),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: const BorderSide(color: AppColors.primary))),
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
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return const QuitGameDialog();
    },
  );
}
