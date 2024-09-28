import 'package:flutter/material.dart';
import 'package:lineup/models/match.dart';
import 'package:lineup/models/pitch_player.dart';
import 'package:lineup/models/team.dart';
import 'package:lineup/utils/positions.dart';

class MatchProvider extends ChangeNotifier {
  Match? _match;
  Team? _selectedTeam;

  Match? get match => _match;
  void setMatch(Match newMatch) {
    _match = newMatch;
    notifyListeners();
  }

  void clearMatch() {
    _match = null;
    notifyListeners();
  }

  Team? get selectedTeam => _selectedTeam;
  void setSelectedTeam(Team team) {
    _selectedTeam = team;
    notifyListeners();
  }

  void clearSelectedTeam() {
    _selectedTeam = null;
    notifyListeners();
  }

  void clearAll() {
    _match = null;
    _selectedTeam = null;
    notifyListeners();
  }

  void setAll(Match match, String team) {
    _match = match;
    _selectedTeam = team == 'home' ? match.home : match.away;
    notifyListeners();
  }

  Map<String, dynamic>? getSearchData() {
    if (_selectedTeam == null) return null;
    return {
      "first11": _selectedTeam!.first11
          .map((player) => PitchPlayer(
                id: player.id,
                show: false,
                // show: true,
                name: player.name,
                url: player.imageLink,
                position: Positions.coordsToPositions[player.coords!],
              ).toJson())
          .toList(),
      "subs": _selectedTeam!.substitutes
          .map((player) => PitchPlayer(
                id: player.id,
                show: false,
                name: player.name,
              ).toJson())
          .toList(),
      "lineup": _selectedTeam!.lineup,
    };
  }
}
