import 'package:flutter/material.dart';
import 'package:lineup/screens/single_filter_screen.dart';
import 'package:lineup/utils/colors.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.search_off,
            color: AppColors.tertiaryDark,
            size: 150,
          ),
          const SizedBox(height: 20),
          const Text(
            'Not Found',
            style: TextStyle(
              fontSize: 36,
              color: AppColors.tertiaryDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'The match you are looking for does not exist. Try to change search criteria.',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.quaternaryDark,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, SingleFilterScreen.routeName);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              backgroundColor: AppColors.quaternaryDark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Try Again',
              style: TextStyle(
                color: AppColors.primaryLight,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
