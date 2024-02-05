import 'package:flutter/material.dart';
import 'package:puzzle_cube/model/face/face.dart';

typedef ColorScheme = Map<Face, CubeColor>;

final class CubeColor {
  final Color color;
  final String name;

  const CubeColor({
    required this.color,
    required this.name,
  });

  @override
  String toString() => name.substring(0, 1).toUpperCase();
}

class ClassicColors {
  static const CubeColor blue = CubeColor(
    color: Color(0xFF0046AD),
    name: 'blue',
  );
  static const CubeColor red = CubeColor(
    color: Color(0xFFB71234),
    name: 'red',
  );
  static const CubeColor yellow = CubeColor(
    color: Color(0xFFFFD500),
    name: 'yellow',
  );
  static const CubeColor green = CubeColor(
    color: Color(0xFF00FB48),
    name: 'green',
  );
  static const CubeColor orange = CubeColor(
    color: Color(0xFFFF5800),
    name: 'orange',
  );
  static const CubeColor white = CubeColor(
    color: Colors.white,
    name: 'white',
  );
}
