import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/widgets/exit_home_button.dart';
import 'package:lineup/widgets/header_text.dart';
import 'package:lineup/widgets/lineup_title.dart';
import 'package:lineup/widgets/room_button.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
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
              text: 'Create Room',
              fontSize: 70,
              textColor: AppColors.tertiaryDark,
              shadowColor: AppColors.primary,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            RoomButton(
              text: 'Create Room',
              onTapped: () => print('Create Room Btn Tapped'),
            ),
          ],
        ),
      ),
      floatingActionButton: const ExitHomeButton(),
    );
  }
}
