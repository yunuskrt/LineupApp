import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LineupTitle extends StatelessWidget {
  const LineupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/lineup.svg',
          width: 50,
          height: 50,
          // colorFilter: const ColorFilter.mode(
          //   Colors.purple,
          //   BlendMode.srcIn,
          // )
        ),
        const Text(
          'LINEUP',
          style: TextStyle(
            letterSpacing: 8,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
