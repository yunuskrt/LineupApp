import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';
import 'package:lineup/widgets/header_text.dart';

class PickMenuCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTapped;

  const PickMenuCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: () {
          onTapped();
        },
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryLight, width: 3),
              gradient: AppColors.menuGradient),
          child: Center(
            child: HeaderText(
              text: text,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 5,
        child: Icon(
          icon,
          color: Colors.white.withOpacity(0.3),
          size: 100,
        ),
      ),
    ]);
  }
}
