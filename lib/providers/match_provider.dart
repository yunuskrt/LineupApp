import 'package:flutter/material.dart';

class MatchProvider extends ChangeNotifier {
  Match? _match;
  Match? get match => _match;

  void setMatch(Match newMatch) {
    _match = newMatch;
    notifyListeners();
  }

  void clearMatch() {
    _match = null;
    notifyListeners();
  }
}
