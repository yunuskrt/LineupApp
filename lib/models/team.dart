import 'package:lineup/models/manager.dart';
import 'package:lineup/models/player.dart';

class Team {
  final String id;
  final String name;
  final String imageLink;
  final String imageId;
  final int? position;
  final int? score;
  final int? halfScore;
  final String lineup;
  final Manager manager;
  final List<Player> first11;
  final List<Player> substitutes;

  const Team({
    required this.id,
    required this.name,
    required this.imageLink,
    required this.imageId,
    this.position,
    this.score,
    this.halfScore,
    required this.lineup,
    required this.manager,
    required this.first11,
    required this.substitutes,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      imageLink: json['imageLink'],
      imageId: json['imageId'],
      position: json['position'],
      score: json['score'],
      halfScore: json['halfScore'],
      lineup: json['lineup'],
      manager: Manager.fromJson(json['manager']),
      first11: List<Player>.from(
          json['first11'].map((player) => Player.fromJson(player))),
      substitutes: List<Player>.from(
          json['substitutes'].map((player) => Player.fromJson(player))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageLink': imageLink,
      'imageId': imageId,
      'position': position,
      'score': score,
      'halfScore': halfScore,
      'lineup': lineup,
      'manager': manager.toJson(),
      'first11': first11.map((player) => player.toJson()).toList(),
      'substitutes': substitutes.map((player) => player.toJson()).toList(),
    };
  }

  Team copyWith({
    String? id,
    String? name,
    String? imageLink,
    String? imageId,
    int? position,
    int? score,
    int? halfScore,
    String? lineup,
    Manager? manager,
    List<Player>? first11,
    List<Player>? substitutes,
  }) {
    return Team(
      id: id ?? this.id,
      name: name ?? this.name,
      imageLink: imageLink ?? this.imageLink,
      imageId: imageId ?? this.imageId,
      position: position ?? this.position,
      score: score ?? this.score,
      halfScore: halfScore ?? this.halfScore,
      lineup: lineup ?? this.lineup,
      manager: manager ?? this.manager,
      first11: first11 ?? this.first11,
      substitutes: substitutes ?? this.substitutes,
    );
  }
}
