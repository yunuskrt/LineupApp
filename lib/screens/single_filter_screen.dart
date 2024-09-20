import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';
import 'package:lineup/util/filters.dart';
import 'package:lineup/widgets/chip_choice_filter.dart';
import 'package:lineup/widgets/chip_drop_filter.dart';
import 'package:lineup/widgets/lineup_title.dart';
import 'package:lineup/widgets/range_filter.dart';

class SingleFilterScreen extends StatefulWidget {
  static String routeName = '/single-filter-screen';
  const SingleFilterScreen({super.key});

  @override
  State<SingleFilterScreen> createState() => _SingleFilterScreenState();
}

class _SingleFilterScreenState extends State<SingleFilterScreen> {
  String? _selectedTypeFilter;
  final Set<String> _selectedLeagueFilters = <String>{};
  RangeValues _leagueSeasonRangeValues = RangeValues(
      Filters.seasons['league']!['min']!, Filters.seasons['league']!['max']!);
  RangeValues _tournamentSeasonRangeValues = RangeValues(
      Filters.seasons['tournament']!['min']!,
      Filters.seasons['tournament']!['max']!);
  final Set<String> _selectedTournamentRounds = <String>{};
  RangeValues _leagueRoundsRangeValues = RangeValues(
      Filters.rounds['league']!['min']!.toDouble(),
      Filters.rounds['league']!['max']!.toDouble());

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> leagueFilters = _selectedTypeFilter == null
        ? Filters.leagues['all']!
        : Filters.leagues[_selectedTypeFilter]!;

    return Scaffold(
      appBar: AppBar(
          title: const LineupTitle(), backgroundColor: AppColors.primary),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              ChipChoiceFilter(
                title: 'Type',
                selectedFilter: _selectedTypeFilter,
                filters: Filters.types,
                onTapped: (String value, bool selected) {
                  setState(() {
                    _selectedTypeFilter = selected ? value : null;
                    _selectedLeagueFilters.clear();
                    _selectedTournamentRounds.clear();
                  });
                },
              ),
              const SizedBox(height: 10.0),
              ChipDropFilter(
                title: 'League',
                selectedFilters: _selectedLeagueFilters,
                filters: leagueFilters,
                onTapped: (String value, bool selected) {
                  setState(() {
                    if (selected) {
                      _selectedLeagueFilters.add(value);
                    } else {
                      _selectedLeagueFilters.remove(value);
                    }
                  });
                },
              ),
              const SizedBox(height: 10.0),
              _selectedTypeFilter == 'league'
                  ? RangeFilter(
                      title: 'Season',
                      minValue: Filters.seasons['league']!['min']!,
                      maxValue: Filters.seasons['league']!['max']!,
                      rangeValues: _leagueSeasonRangeValues,
                      labelFormatter: (int value) => '$value/${value + 1}',
                      onSlided: (RangeValues values) {
                        setState(() {
                          _leagueSeasonRangeValues = values;
                        });
                      },
                    )
                  : _selectedTypeFilter == 'tournament'
                      ? RangeFilter(
                          title: 'Season',
                          minValue: Filters.seasons['tournament']!['min']!,
                          maxValue: Filters.seasons['tournament']!['max']!,
                          step: 2,
                          rangeValues: _tournamentSeasonRangeValues,
                          labelFormatter: (int value) => value.toString(),
                          onSlided: (RangeValues values) {
                            setState(() {
                              _tournamentSeasonRangeValues = values;
                            });
                          },
                        )
                      : const SizedBox(),
              const SizedBox(height: 10.0),
              _selectedTypeFilter == 'league'
                  ? RangeFilter(
                      title: 'Round',
                      minValue: Filters.rounds['league']!['min']!.toDouble(),
                      maxValue: Filters.rounds['league']!['max']!.toDouble(),
                      rangeValues: _leagueRoundsRangeValues,
                      labelFormatter: (int value) => '$value.Matchday',
                      onSlided: (RangeValues values) {
                        setState(() {
                          _leagueRoundsRangeValues = values;
                          _selectedTournamentRounds.clear();
                        });
                      },
                    )
                  : _selectedTypeFilter == 'tournament'
                      ? ChipDropFilter(
                          title: 'Round',
                          selectedFilters: _selectedTournamentRounds,
                          filters: Filters.rounds['tournament']!,
                          onTapped: (String value, bool selected) {
                            setState(() {
                              if (selected) {
                                _selectedTournamentRounds.add(value);
                              } else {
                                _selectedTournamentRounds.remove(value);
                              }
                            });
                          },
                        )
                      : const SizedBox(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: 20.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  print('Clear Btn Tapped');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      AppColors.quaternaryDark),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(color: AppColors.quaternaryDark),
                  ),
                ),
                child: const Text(
                  'Clear',
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  print('Apply Btn Tapped');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.quaternaryDark),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primaryLight),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: AppColors.quaternaryDark),
                    ),
                  ),
                ),
                child: const Text(
                  'Apply Filters',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
