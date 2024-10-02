import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lineup/screens/home_screen.dart';
import 'package:lineup/utils/colors.dart';

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
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/lineup.svg',
              width: 200,
              height: 200,
              colorFilter: const ColorFilter.mode(
                AppColors.primaryLight,
                BlendMode.srcIn,
              ),
            ),
            const Text(
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
