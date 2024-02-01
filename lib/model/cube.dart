import 'package:puzzle_cube/model/center/centers.dart';
import 'package:puzzle_cube/model/corner/corners.dart';
import 'package:puzzle_cube/model/edge/edges.dart';
import 'package:puzzle_cube/model/moves/move.dart';

abstract class Cube implements MoveList {
  final Centers centers;
  final Corners corners;
  final Edges edge;

  Cube({
    required this.centers,
    required this.corners,
    required this.edge,
  });

  @override
  String toString() {
    return corners.corners.toString() +
        edge.edges.toString() +
        centers.centers.toString();
  }
}
