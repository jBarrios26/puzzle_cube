import 'package:puzzle_cube/model/model.dart';
import 'package:puzzle_cube/model/moves/move.dart';

abstract class Centers implements MoveList {
  final Map<Face, List<Center>> centers;

  Centers({required this.centers});
}
