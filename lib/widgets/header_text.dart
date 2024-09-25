import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final Color shadowColor;
  const HeaderText({
    super.key,
    required this.text,
    this.fontSize = 30,
    this.textColor = AppColors.primaryLight,
    this.shadowColor = AppColors.tertiaryDark,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: shadowColor,
            offset: const Offset(5, 5),
          ),
        ],
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
// Text(
//       text,
//       style: TextStyle(
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//         fontSize: fontSize,
//         shadows: shadows,
//       ),
//     );