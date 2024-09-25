import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';

class GuessInput extends StatelessWidget {
  final TextEditingController controller;

  const GuessInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a player',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary, width: 2.0),
        ),
      ),
    );
  }
}
