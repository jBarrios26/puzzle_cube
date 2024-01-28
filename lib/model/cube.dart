import 'package:puzzle_cube/model/center.dart';

abstract class Cube {
  final List<Center> centers;
  final List<Corner> corners;
  final List<Edge> edge;

  Cube({
    required this.centers,
    required this.corners,
    required this.edge,
  });
}

class Corner {}

class Edge {}
