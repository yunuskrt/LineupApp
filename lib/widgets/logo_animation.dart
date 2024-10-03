import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lineup/utils/colors.dart';

class LogoAnimation extends StatefulWidget {
  const LogoAnimation({super.key});

  @override
  State<LogoAnimation> createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _bounceUpController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _rotationAnimation =
        Tween<double>(begin: 0, end: 6 * pi).animate(_rotationController);

    _bounceUpController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _bounceAnimation = Tween<double>(begin: 0, end: -50).animate(
      CurvedAnimation(
        parent: _bounceUpController,
        curve: Curves.bounceInOut,
      ),
    );

    _rotationController.forward().then((_) {
      _bounceUpController.forward();
    });
  }

  @override
  void dispose() {
    _rotationController.dispose();
    _bounceUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_rotationController, _bounceUpController]),
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _bounceAnimation.value),
          child: Transform.rotate(
            angle: _rotationAnimation.value,
            child: child,
          ),
        );
      },
      child: SvgPicture.asset(
        'assets/lineup.svg',
        width: 200,
        height: 200,
        colorFilter: const ColorFilter.mode(
          AppColors.primaryLight,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
