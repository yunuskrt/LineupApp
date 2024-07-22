import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lineup/util/colors.dart';

class LineupTitle extends StatelessWidget {
  const LineupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/lineup.svg',
            width: 50,
            height: 50,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryLight,
              BlendMode.srcIn,
            )),
        const Text(
          'LINEUP',
          style: TextStyle(
            letterSpacing: 8,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryLight,
          ),
        ),
      ],
    );
  }
}
