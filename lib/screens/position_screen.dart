import 'package:flutter/material.dart';
import 'package:lineup/widgets/inputs/guess_input.dart';
import 'package:lineup/widgets/alerts/quit_game_alert.dart';
import 'package:lineup/utils/colors.dart';

class PositionScreen extends StatefulWidget {
  static String routeName = '/position';
  const PositionScreen({super.key});

  @override
  State<PositionScreen> createState() => _LineupPageState();
}

class _LineupPageState extends State<PositionScreen> {
  final TextEditingController _playerInputController = TextEditingController();

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
          ),
        ),
        child: CustomPaint(
          painter: SoccerPitchPainter(),
          child: Container(),
        ),
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
                print(_playerInputController.text);
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

class SoccerPitchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 124, 117, 46)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final width = size.width;
    final height = size.height;

    const length = 20.0;

    // Draw soccer pitch lines
    // canvas.drawRect(Rect.fromLTWH(0, 0, width, height), paint);

    // Draw player positions (example)
    canvas.drawCircle(Offset(width * 0.50, height * 0.92), length, paint);

    canvas.drawCircle(Offset(width * 0.75, height * 0.80), length, paint);
    canvas.drawCircle(Offset(width * 0.50, height * 0.80), length, paint);
    canvas.drawCircle(Offset(width * 0.25, height * 0.80), length, paint);

    canvas.drawCircle(Offset(width * 0.50, height * 0.57), length, paint);
    canvas.drawCircle(Offset(width * 0.15, height * 0.50), length, paint);
    canvas.drawCircle(Offset(width * 0.85, height * 0.50), length, paint);
    canvas.drawCircle(Offset(width * 0.50, height * 0.43), length, paint);

    canvas.drawCircle(Offset(width * 0.30, height * 0.23), length, paint);
    canvas.drawCircle(Offset(width * 0.70, height * 0.23), length, paint);

    canvas.drawCircle(Offset(width * 0.50, height * 0.11), length, paint);
    // canvas.drawCircle(Offset(width * 0.50, height * 0.77), 20.0, paint);
    // canvas.drawCircle(Offset(width * 0.50, height * 0.37), 20.0, paint);
    // canvas.drawCircle(Offset(width * 0.50, height * 0.47), 20.0, paint);
    // Add more player positions as needed

    // You can also add text labels for player positions
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
