import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';

class PickImage extends StatelessWidget {
  final VoidCallback onTapped;
  final bool selected;
  final String imageUrl;
  final double width;
  final double height;
  final Color selectedColor;

  const PickImage({
    super.key,
    required this.onTapped,
    required this.selected,
    required this.imageUrl,
    this.width = 75,
    this.height = 75,
    this.selectedColor = AppColors.success,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.quaternaryLight, // White background
          borderRadius: BorderRadius.circular(5.0), // Rounded corners
          border: Border.all(
            color: selected
                ? selectedColor
                : Colors.transparent, // Green frame on press
            width: 5.0,
          ),
        ),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(20.0), // Same border radius for image
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
