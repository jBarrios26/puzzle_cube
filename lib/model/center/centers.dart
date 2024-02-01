import 'package:puzzle_cube/model/center/center.dart';
import 'package:puzzle_cube/model/face/face.dart';
import 'package:puzzle_cube/model/moves/move.dart';

abstract class Centers implements MoveList {
  final Map<Face, List<Center>> centers;

  Centers({required this.centers});
}
