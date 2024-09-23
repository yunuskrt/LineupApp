// import 'package:flutter/material.dart';

// class FilterProvider extends ChangeNotifier {
//   String? _filter;
//   String? get filter => _filter;

//   void setFilter(String newFilter) {
//     _filter = newFilter;
//     notifyListeners();
//   }

//   void clearFilter() {
//     _filter = null;
//     notifyListeners();
//   }
// }
import 'package:flutter/material.dart';
import 'package:lineup/models/filter.dart';

class FilterProvider extends ChangeNotifier {
  Filter? _filter;
  Filter? get filter => _filter;

  void setFilter(Filter newFilter) {
    _filter = newFilter;
    notifyListeners();
  }

  void clearFilter() {
    _filter = null;
    notifyListeners();
  }

  String getQuery() {
    if (_filter == null) {
      return '';
    }

    final Map<String, String?> filterMap = {
      'type': _filter!.type,
      'league': _filter!.league,
      'season': _filter!.season,
      'round': _filter!.round,
    };

    final List<String> queryList = [];

    filterMap.forEach((key, value) {
      if (value != null) {
        queryList.add('$key=$value');
      }
    });

    return queryList.isEmpty ? '' : '?${queryList.join('&')}';
  }
}
