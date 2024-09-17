import 'package:lineup/models/team.dart';

class Match {
  final String id;
  final String type;
  final String league;
  final String country;
  final String season;
  final String round;
  final String date;
  final String? stadium;
  final int? attendance;
  final String? referee;
  final bool? extraTime;
  final bool? penalty;
  final Team home;
  final Team away;

  const Match({
    required this.id,
    required this.type,
    required this.league,
    required this.country,
    required this.season,
    required this.round,
    required this.date,
    this.stadium,
    this.attendance,
    this.referee,
    this.extraTime,
    this.penalty,
    required this.home,
    required this.away,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      id: json['id'],
      type: json['type'],
      league: json['league'],
      country: json['country'],
      season: json['season'],
      round: json['round'],
      date: json['date'],
      stadium: json['stadium'],
      attendance: json['attendance'],
      referee: json['referee'],
      extraTime: json['extraTime'],
      penalty: json['penalty'],
      home: Team.fromJson(json['home']),
      away: Team.fromJson(json['away']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'league': league,
      'country': country,
      'season': season,
      'round': round,
      'date': date,
      'stadium': stadium,
      'attendance': attendance,
      'referee': referee,
      'extraTime': extraTime,
      'penalty': penalty,
      'home': home.toJson(),
      'away': away.toJson(),
    };
  }

  Match copyWith({
    String? id,
    String? type,
    String? league,
    String? country,
    String? season,
    String? round,
    String? date,
    String? stadium,
    int? attendance,
    String? referee,
    bool? extraTime,
    bool? penalty,
    Team? home,
    Team? away,
  }) {
    return Match(
      id: id ?? this.id,
      type: type ?? this.type,
      league: league ?? this.league,
      country: country ?? this.country,
      season: season ?? this.season,
      round: round ?? this.round,
      date: date ?? this.date,
      stadium: stadium ?? this.stadium,
      attendance: attendance ?? this.attendance,
      referee: referee ?? this.referee,
      extraTime: extraTime ?? this.extraTime,
      penalty: penalty ?? this.penalty,
      home: home ?? this.home,
      away: away ?? this.away,
    );
  }
}
