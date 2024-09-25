import 'package:flutter/material.dart';
import 'package:lineup/utils/colors.dart';

class ChipChoiceFilter extends StatelessWidget {
  final String title;
  final String? selectedFilter;
  final List<Map<String, String>> filters;
  final Function(String, bool) onTapped;

  const ChipChoiceFilter({
    super.key,
    required this.title,
    required this.selectedFilter,
    required this.filters,
    required this.onTapped,
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
          Wrap(
            spacing: 5.0,
            children: filters.map((filter) {
              final String value = filter['value']!;
              final String text = filter['text']!;
              return ChoiceChip(
                selectedColor: AppColors.primary,
                showCheckmark: false,
                side: const BorderSide(
                  color: AppColors.quaternaryDark,
                  width: 1.5,
                ),
                label: Text(text),
                selected: selectedFilter == value,
                onSelected: (bool selected) {
                  onTapped(value, selected);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
