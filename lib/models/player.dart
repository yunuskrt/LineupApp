class Player {
  final String id;
  final String name;
  final String imageLink;
  final String imageId;
  final String? dateOfBirth;
  final String citizenship;
  final int? height;
  final String position;
  final String? foot;
  final int? number;
  final String? coords;
  final List<String> actions;

  Player({
    required this.id,
    required this.name,
    required this.imageLink,
    required this.imageId,
    this.dateOfBirth,
    required this.citizenship,
    this.height,
    required this.position,
    this.foot,
    this.number,
    this.coords,
    required this.actions,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      name: json['name'],
      imageLink: json['imageLink'],
      imageId: json['imageId'],
      dateOfBirth: json['dateOfBirth'],
      citizenship: json['citizenship'],
      height: json['height'],
      position: json['position'],
      foot: json['foot'],
      number: json['number'],
      coords: json['coords'],
      actions: List<String>.from(json['actions']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageLink': imageLink,
      'imageId': imageId,
      'dateOfBirth': dateOfBirth,
      'citizenship': citizenship,
      'height': height,
      'position': position,
      'foot': foot,
      'number': number,
      'coords': coords,
      'actions': actions,
    };
  }

  Player copyWith({
    String? id,
    String? name,
    String? imageLink,
    String? imageId,
    String? dateOfBirth,
    String? citizenship,
    int? height,
    String? position,
    String? foot,
    int? number,
    String? coords,
    List<String>? actions,
  }) {
    return Player(
      id: id ?? this.id,
      name: name ?? this.name,
      imageLink: imageLink ?? this.imageLink,
      imageId: imageId ?? this.imageId,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      citizenship: citizenship ?? this.citizenship,
      height: height ?? this.height,
      position: position ?? this.position,
      foot: foot ?? this.foot,
      number: number ?? this.number,
      coords: coords ?? this.coords,
      actions: actions ?? this.actions,
    );
  }
}
