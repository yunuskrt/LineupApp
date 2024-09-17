class User {
  final String username;
  final String socketID;
  final int winCount;
  final int lossCount;
  final String playerType;
  User({
    required this.username,
    required this.socketID,
    required this.winCount,
    required this.lossCount,
    required this.playerType,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'socketID': socketID,
      'winCount': winCount,
      'lossCount': lossCount,
      'playerType': playerType,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'] ?? '',
      socketID: map['socketID'] ?? '',
      winCount: map['winCount'] ?? 0,
      lossCount: map['lossCount'] ?? 0,
      playerType: map['playerType'] ?? '',
    );
  }

  User copyWith({
    String? username,
    String? socketID,
    int? winCount,
    int? lossCount,
    String? playerType,
  }) {
    return User(
      username: username ?? this.username,
      socketID: socketID ?? this.socketID,
      winCount: winCount ?? this.winCount,
      lossCount: lossCount ?? this.lossCount,
      playerType: playerType ?? this.playerType,
    );
  }
}
