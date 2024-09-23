import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';

int randomIntFromRange(RangeValues rangeValues, {int step = 1}) {
  final random = Random();

  int min = rangeValues.start.round();
  int max = rangeValues.end.round();

  final List<int> values = [];
  for (int i = min; i <= max; i += step) {
    values.add(i);
  }

  return values[random.nextInt(values.length)];
}

String? randomStringFromSet(Set<String> values) {
  if (values.isEmpty) {
    return null;
  }
  final random = Random();
  return values.elementAt(random.nextInt(values.length));
}

String? randomStringFromList(List<String> values) {
  if (values.isEmpty) {
    return null;
  }
  final random = Random();
  return values[random.nextInt(values.length)];
}

SnackBar alertSnackBar(String text, String type) {
  return SnackBar(
    content: Center(
      child: type == 'error' ||
              type == 'success' ||
              type == 'warning' ||
              type == 'info'
          ? Row(
              children: [
                Icon(
                    color: AppColors.primaryLight,
                    type == 'error'
                        ? Icons.error
                        : type == 'success'
                            ? Icons.check
                            : type == 'info'
                                ? Icons.info
                                : Icons.warning),
                const SizedBox(width: 10.0),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          : const SizedBox(),
    ),
    duration: const Duration(seconds: 1),
    action: SnackBarAction(
      label: 'Dismiss',
      textColor: AppColors.primaryLight,
      onPressed: () {},
    ),
    backgroundColor: type == 'error'
        ? AppColors.danger
        : type == 'success'
            ? AppColors.success
            : type == 'info'
                ? AppColors.info
                : type == 'warning'
                    ? AppColors.warning
                    : Colors.transparent,
  );
}
