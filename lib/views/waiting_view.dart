import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/widgets/avatar_loading.dart';

class WaitingView extends StatelessWidget {
  final VoidCallback onExit;
  const WaitingView({
    super.key,
    required this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AvatarLoading(),
            SizedBox(
              height: 20,
            ),
            Text(
              '1/2 players joined',
              style: TextStyle(
                color: AppColors.tertiaryDark,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Waiting for other players...',
              style: TextStyle(
                color: AppColors.tertiaryDark,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.danger,
        foregroundColor: AppColors.primaryLight,
        splashColor: AppColors.danger,
        onPressed: onExit,
        child: const Icon(Icons.exit_to_app),
      ),
    );
  }
}
