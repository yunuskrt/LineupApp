class PositionCoordinates {
  double topPercentage;
  double leftPercentage;

  PositionCoordinates({
    required this.topPercentage,
    required this.leftPercentage,
  });
}

Map<String, PositionCoordinates> positions = {
  'GK': PositionCoordinates(topPercentage: 0.59, leftPercentage: 0.40),
  'LCB': PositionCoordinates(topPercentage: 0.51, leftPercentage: 0.20),
  'RCB': PositionCoordinates(topPercentage: 0.51, leftPercentage: 0.60),
  'CB': PositionCoordinates(topPercentage: 0.51, leftPercentage: 0.40),
};

PositionCoordinates getCoordinates(String position) {
  return positions[position]!;
}
