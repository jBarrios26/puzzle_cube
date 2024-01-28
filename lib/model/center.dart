import 'package:puzzle_cube/model/cube_color.dart';
import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/moves/move.dart';
import 'package:puzzle_cube/model/moves/rotation.dart';

abstract class Centers {
  final Map<Face, List<Center>> centers;

  Centers({required this.centers});
}

abstract class Center implements Rotation, MoveList {
  final CubeColor color;
  int orientation;

  Center({
    required this.color,
    this.orientation = 0,
  });
}
