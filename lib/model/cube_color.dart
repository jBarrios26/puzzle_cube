import 'package:flutter/material.dart';

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
  static CubeColor get blue => const CubeColor(
        color: Color(0xFF0046AD),
        name: 'blue',
      );
  static CubeColor get red => const CubeColor(
        color: Color(0xFFB71234),
        name: 'red',
      );
  static CubeColor get yellow => const CubeColor(
        color: Color(0xFFFFD500),
        name: 'yellow',
      );
  static CubeColor get green => const CubeColor(
        color: Color(0xFF00FB48),
        name: 'green',
      );
  static CubeColor get orange => const CubeColor(
        color: Color(0xFFFF5800),
        name: 'orange',
      );
  static CubeColor get white => const CubeColor(
        color: Colors.white,
        name: 'white',
      );
}
