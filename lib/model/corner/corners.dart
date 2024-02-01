import 'package:puzzle_cube/model/corner/corner.dart';
import 'package:puzzle_cube/model/corner/corner_position.dart';
import 'package:puzzle_cube/model/moves/move.dart';

abstract class Corners implements MoveList {
  final Map<CornerPosition, Corner> corners;

  Corners({
    required this.corners,
  });
}
