import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';

class RangeFilter extends StatelessWidget {
  final String title;
  final double minValue;
  final double maxValue;
  final int step;
  final RangeValues rangeValues;
  final String Function(int) labelFormatter;
  final Function(RangeValues) onSlided;

  const RangeFilter({
    super.key,
    required this.title,
    required this.minValue,
    required this.maxValue,
    this.step = 1,
    required this.rangeValues,
    required this.labelFormatter,
    required this.onSlided,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title, style: textTheme.labelLarge),
          const SizedBox(height: 2.0),
          RangeSlider(
            activeColor: AppColors.primary,
            inactiveColor: AppColors.secondary,
            values: rangeValues,
            max: maxValue,
            min: minValue,
            divisions: (maxValue - minValue) ~/ step,
            labels: RangeLabels(
              labelFormatter(rangeValues.start.round()),
              labelFormatter(rangeValues.end.round()),
            ),
            onChanged: (RangeValues values) {
              onSlided(values);
            },
          ),
        ],
      ),
    );
  }
}
