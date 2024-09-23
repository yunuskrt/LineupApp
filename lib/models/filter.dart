class Filter {
  String? type;
  String? league;
  String? season;
  String? round;

  Filter({
    this.type,
    this.league,
    this.season,
    this.round,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
      type: json['type'],
      league: json['league'],
      season: json['season'],
      round: json['round'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'league': league,
      'season': season,
      'round': round,
    };
  }

  Filter copyWith({
    String? type,
    String? league,
    String? season,
    String? round,
  }) {
    return Filter(
      type: type ?? this.type,
      league: league ?? this.league,
      season: season ?? this.season,
      round: round ?? this.round,
    );
  }
}
