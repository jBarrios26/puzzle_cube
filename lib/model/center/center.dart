import 'package:puzzle_cube/model/face/facelet.dart';
import 'package:puzzle_cube/model/moves/rotation.dart';

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
