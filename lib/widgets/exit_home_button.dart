import 'package:flutter/material.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/utils/colors.dart';

class ExitHomeButton extends StatelessWidget {
  const ExitHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.danger,
      foregroundColor: AppColors.primaryLight,
      splashColor: AppColors.danger,
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.routeName, (route) => false);
      },
      child: const Icon(Icons.exit_to_app),
    );
  }
}
