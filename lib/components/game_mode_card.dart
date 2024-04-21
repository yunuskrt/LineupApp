import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lineup/util/colors.dart';

class GameModeCard extends StatelessWidget {
  final String svgPath;
  final String headerText;
  final String subText;

  const GameModeCard(
      {super.key,
      required this.svgPath,
      required this.headerText,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: MediaQuery.of(context).size.width * 0.9,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: AppColors.primaryGradient),
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor:
                          AppColors.quaternary, // Placeholder color
                      child: SvgPicture.asset(
                        svgPath,
                        width: 28,
                        height: 28,
                        fit: BoxFit.fill,
                        colorFilter: const ColorFilter.mode(
                            AppColors.primaryLight, BlendMode.srcIn),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      headerText,
                      style: const TextStyle(
                          color: AppColors.primaryLight,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      subText,
                      style: const TextStyle(
                          color: AppColors.primaryLight, fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
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
    );
  }
}
