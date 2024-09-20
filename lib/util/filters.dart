class Filters {
  static const List<Map<String, String>> types = [
    {
      'value': 'tournament',
      'text': 'Tournament',
    },
    {
      'value': 'league',
      'text': 'League',
    },
  ];

  static const Map<String, List<Map<String, String>>> leagues = {
    'all': [
      {
        'value': 'UEFA Europe League',
        'text': 'UEFA Europe League',
        'icon': 'assets/europe_league.png',
      },
      {
        'value': 'Serie A',
        'text': 'Serie A',
        'icon': 'assets/serie_a.png',
      },
      {
        'value': 'Bundesliga',
        'text': 'Bundesliga',
        'icon': 'assets/bundesliga.png',
      },
      {
        'value': 'UEFA Champions League',
        'text': 'UEFA Champions League',
        'icon': 'assets/champions_league.png',
      },
      {
        'value': 'World Cup',
        'text': 'World Cup',
        'icon': 'assets/world_cup.png',
      },
      {
        'value': 'EURO',
        'text': 'EURO',
        'icon': 'assets/euro.png',
      },
      {
        'value': 'Premier League',
        'text': 'Premier League',
        'icon': 'assets/premier_league.png',
      },
      {
        'value': 'La Liga',
        'text': 'La Liga',
        'icon': 'assets/la_liga.png',
      },
      {
        'value': 'Super Lig',
        'text': 'Super Lig',
        'icon': 'assets/super_lig.png',
      },
    ],
    'league': [
      {
        'value': 'Serie A',
        'text': 'Serie A',
        'icon': 'assets/serie_a.png',
      },
      {
        'value': 'Bundesliga',
        'text': 'Bundesliga',
        'icon': 'assets/bundesliga.png',
      },
      {
        'value': 'Premier League',
        'text': 'Premier League',
        'icon': 'assets/premier_league.png',
      },
      {
        'value': 'La Liga',
        'text': 'La Liga',
        'icon': 'assets/la_liga.png',
      },
      {
        'value': 'Super Lig',
        'text': 'Super Lig',
        'icon': 'assets/super_lig.png',
      },
    ],
    'tournament': [
      {
        'value': 'UEFA Europe League',
        'text': 'UEFA Europe League',
        'icon': 'assets/europe_league.png',
      },
      {
        'value': 'UEFA Champions League',
        'text': 'UEFA Champions League',
        'icon': 'assets/champions_league.png',
      },
      {
        'value': 'World Cup',
        'text': 'World Cup',
        'icon': 'assets/world_cup.png',
      },
      {
        'value': 'EURO',
        'text': 'EURO',
        'icon': 'assets/euro.png',
      },
    ],
  };

  static const Map<String, Map<String, double>> seasons = {
    'league': {
      'min': 2007,
      'max': 2023,
    },
    'tournament': {
      'min': 2002,
      'max': 2024,
    },
  };

  static const Map<String, dynamic> rounds = {
    'league': {
      'min': 1,
      'max': 42,
    },
    'tournament': [
      {'value': 'groupStage', 'text': 'Group Stage'},
      {'value': 'intermediateStage', 'text': 'Intermediate Stage'},
      {'value': 'roundOf16', 'text': 'Round of 16'},
      {'value': 'quarterFinals', 'text': 'Quarter Finals'},
      {'value': 'semiFinals', 'text': 'Semi Finals'},
      {'value': 'final', 'text': 'Final'},
    ],
  };

  static const Map<String, List<String>> mapRounds = {
    'groupStage': [
      'GroupA',
      'GroupB',
      'GroupC',
      'GroupD',
      'GroupE',
      'GroupF',
      'GroupG',
      'GroupH'
    ],
    'intermediateStage': [
      'intermediatestage1stleg',
      'intermediatestage2ndleg',
      'SecondRound1stleg',
      'SecondRound2ndleg',
    ],
    'roundOf16': [
      'Roundof161',
      'Roundof162',
      'Roundof163',
      'Roundof164',
      'Roundof165',
      'Roundof166',
      'Roundof167',
      'Roundof168',
      'last161stleg',
      'last162ndleg',
      'Roundof16',
    ],
    'quarterFinals': [
      'Quarter-Finals1',
      'Quarter-Finals2',
      'Quarter-Finals3',
      'Quarter-Finals4',
      'Quarter-Finals1stleg',
      'Quarter-Finals2ndleg',
      'Quarter-Finals',
    ],
    'semiFinals': [
      'Semi-Finals1',
      'Semi-Finals2',
      'Semi-Finals1stLeg',
      'Semi-Finals2ndLeg',
      'Semi-Finals',
    ],
    'final': ['Final'],
  };
}
