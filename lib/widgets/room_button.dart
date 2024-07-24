import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';

class RoomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTapped;

  const RoomButton({
    super.key,
    required this.text,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        onTapped();
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(size.width, 50),
        ),
        backgroundColor: MaterialStateProperty.all(
          AppColors.primary,
        ),
        elevation: MaterialStateProperty.all(5),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.primaryLight,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
