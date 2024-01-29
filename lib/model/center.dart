import 'package:puzzle_cube/model/cube_color.dart';
import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/facelet.dart';
import 'package:puzzle_cube/model/moves/move.dart';
import 'package:puzzle_cube/model/moves/rotation.dart';

class Centers {
  final Map<Face, List<Center>> centers;

  Centers({required this.centers});
}

class Center implements Rotation {
  final Facelet facelet;
  int orientation;

  Center({
    required this.facelet,
    this.orientation = 0,
  });

  @override
  int get getOrientation => orientation % 4;

  @override
  set setOrientation(
    int orientation,
  ) =>
      this.orientation = orientation % 4;

  @override
  void rotateAntiClockwise() {
    setOrientation = orientation + 1;
  }

  @override
  void rotateClockwise() {
    setOrientation = orientation + 1;
  }
}
