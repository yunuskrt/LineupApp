import 'package:flutter/material.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/widgets/header_text.dart';
import 'package:lineup/widgets/lineup_title.dart';
import 'package:lineup/widgets/room_button.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _gameIdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const LineupTitle(),
        backgroundColor: AppColors.primary,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 25,
          right: 25,
          bottom: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderText(
              text: 'Join Room',
              fontSize: 70,
              textColor: AppColors.tertiaryDark,
              shadowColor: AppColors.primary,
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            TextField(
              controller: _gameIdController,
              decoration: const InputDecoration(
                hintText: 'Enter Room ID',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.success,
                  ),
                ),
              ),
              cursorColor: AppColors.tertiaryDark,
              cursorErrorColor: AppColors.danger,
            ),
            SizedBox(
              height: size.height * 0.055,
            ),
            RoomButton(
              text: 'Join',
              onTapped: () {
                print('Joining room with ID: ${_gameIdController.text}');
                _gameIdController.clear();
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.danger,
        foregroundColor: AppColors.primaryLight,
        splashColor: AppColors.danger,
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, HomeScreen.routeName, (route) => false);
        },
        child: const Icon(Icons.exit_to_app),
      ),
    );
  }
}
