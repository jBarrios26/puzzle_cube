import 'package:flutter/material.dart';
import 'package:puzzle_cube/model/color/cube_color.dart';
import 'package:puzzle_cube/model/face/face.dart';

class Facelet {
  final Face face;
  final int index;
  final CubeColor color;

  const Facelet({
    required this.face,
    required this.index,
    required this.color,
  });

  factory Facelet.empty() => const Facelet(
        face: Face.up,
        index: -1,
        color: CubeColor(color: Colors.transparent, name: 'Transparente'),
      );

  String get name => face.name.substring(0, 1) + index.toString();

  @override
  String toString() => name;
}
