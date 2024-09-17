class Manager {
  final String id;
  final String name;
  final String imageLink;
  final String imageId;
  final String? dateOfBirth;
  final String citizenship;

  const Manager({
    required this.id,
    required this.name,
    required this.imageLink,
    required this.imageId,
    this.dateOfBirth,
    required this.citizenship,
  });

  factory Manager.fromJson(Map<String, dynamic> json) {
    return Manager(
      id: json['id'],
      name: json['name'],
      imageLink: json['imageLink'],
      imageId: json['imageId'],
      dateOfBirth: json['dateOfBirth'],
      citizenship: json['citizenship'],
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
    };
  }

  Manager copyWith({
    String? id,
    String? name,
    String? imageLink,
    String? imageId,
    String? dateOfBirth,
    String? citizenship,
  }) {
    return Manager(
      id: id ?? this.id,
      name: name ?? this.name,
      imageLink: imageLink ?? this.imageLink,
      imageId: imageId ?? this.imageId,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      citizenship: citizenship ?? this.citizenship,
    );
  }
}
