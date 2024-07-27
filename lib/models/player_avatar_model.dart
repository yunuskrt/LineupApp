import 'package:flutter/material.dart';

class PlayerAvatarModel {
  final String name;
  final Color color;
  final String path;
  final int id;

  const PlayerAvatarModel({
    required this.name,
    required this.color,
    required this.path,
    required this.id,
  });
}
