import 'package:flutter/material.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/utils/colors.dart';

class QuitGameDialog extends StatelessWidget {
  const QuitGameDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primaryDark,
      title: const Text('Quit Game',
          style: TextStyle(
              color: AppColors.primaryLight, fontWeight: FontWeight.bold)),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.headlineSmall,
            foregroundColor: AppColors.danger,
          ),
          child: const Text('No'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.headlineSmall,
            foregroundColor: AppColors.success,
          ),
          child: const Text('Yes'),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, HomeScreen.routeName, (route) => false);
          },
        ),
      ],
    );
  }
}
