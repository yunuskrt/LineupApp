class PitchPlayer {
  final String id;
  final bool show;
  final String name;
  final String? url;
  final String? position;

  const PitchPlayer({
    required this.id,
    required this.show,
    required this.name,
    this.url,
    this.position,
  });

  factory PitchPlayer.fromJson(Map<String, dynamic> json) {
    return PitchPlayer(
      id: json['id'],
      show: json['show'],
      name: json['name'],
      url: json['url'],
      position: json['position'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'show': show,
      'name': name,
      'url': url,
      'position': position,
    };
  }

  PitchPlayer copyWith({
    String? id,
    bool? show,
    String? name,
    String? url,
    String? position,
  }) {
    return PitchPlayer(
      id: id ?? this.id,
      show: show ?? this.show,
      name: name ?? this.name,
      url: url ?? this.url,
      position: position ?? this.position,
    );
  }
}
