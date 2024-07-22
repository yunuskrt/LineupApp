import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final double fontSize;
  const HeaderText({super.key, required this.text, this.fontSize = 30});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        shadows: const [
          Shadow(
            blurRadius: 10.0,
            color: AppColors.tertiaryDark,
            offset: Offset(5, 5),
          ),
        ],
        fontSize: fontSize,
        color: AppColors.primaryLight,
        fontWeight: FontWeight.w900,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
