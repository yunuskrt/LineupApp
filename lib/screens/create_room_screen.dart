import 'package:flutter/material.dart';
import 'package:lineup/resources/socket_methods.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/util/colors.dart';
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
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.createRoomListener(context);
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
              onTapped: () => _socketMethods.createRoom(),
            ),
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
