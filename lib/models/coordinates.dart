class Coordinates {
  double top;
  double left;

  Coordinates({
    required this.top,
    required this.left,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      top: json['top'],
      left: json['left'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'top': top,
      'left': left,
    };
  }

  Coordinates copyWith({
    double? top,
    double? left,
  }) {
    return Coordinates(
      top: top ?? this.top,
      left: left ?? this.left,
    );
  }
}
