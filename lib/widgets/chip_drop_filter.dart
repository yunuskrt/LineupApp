import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';

class ChipDropFilter extends StatelessWidget {
  final String title;
  final Set<String> selectedFilters;
  final List<Map<String, String>> filters;
  final Function(String, bool) onTapped;

  const ChipDropFilter({
    super.key,
    required this.title,
    required this.selectedFilters,
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
              return FilterChip(
                selectedColor: AppColors.primary,
                showCheckmark: false,
                side: const BorderSide(
                  color: AppColors.quaternaryDark,
                  width: 1.5,
                ),
                label: filter['icon'] == null
                    ? Text(text)
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(filter['icon']!, width: 20, height: 20),
                          const SizedBox(width: 5.0),
                          Text(text),
                        ],
                      ),
                selected: selectedFilters.contains(value),
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
