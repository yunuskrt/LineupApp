import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/widgets/header_text.dart';

class GameModeCard extends StatelessWidget {
  final String svgPath;
  final String headerText;
  final String subText;
  final LinearGradient gradientColor;
  final VoidCallback onTapped;

  const GameModeCard(
      {super.key,
      required this.svgPath,
      required this.headerText,
      required this.subText,
      this.gradientColor = AppColors.primaryGradient,
      required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                onTapped();
              },
              splashColor: AppColors.tertiaryDark,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(gradient: gradientColor),
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            HeaderText(text: headerText),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          subText,
                          style: const TextStyle(
                            color: AppColors.primaryLight,
                            fontSize: 18,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -25,
              right: -25,
              child: SvgPicture.asset(
                svgPath,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.3),
                  BlendMode.srcIn,
                ),
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
