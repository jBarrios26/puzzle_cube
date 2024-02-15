import 'package:puzzle_cube/model/edge/edge.dart';
import 'package:puzzle_cube/model/edge/edge_position.dart';
import 'package:puzzle_cube/model/moves/move.dart';

abstract class Edges implements MoveList {
  final Map<(EdgePosition, int), Edge> edges;

  Edges({
    required this.edges,
  });

  bool passesEdgeOrientationTest() {
    int orientationSum = 0;
    for (var element in edges.values) {
      orientationSum += element.orientation;
    }
    return orientationSum % 2 == 0;
  }
}
