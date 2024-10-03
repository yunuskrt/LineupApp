import 'package:flutter/material.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/widgets/logo_animation.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future<void>.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoAnimation(),
            Text(
              'LINEUP',
              style: TextStyle(
                letterSpacing: 12,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
