import 'package:puzzle_cube/model/center.dart';
import 'package:puzzle_cube/model/corner.dart';
import 'package:puzzle_cube/model/edge.dart';
import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/facelet.dart';

class Cube {
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
    final urfUpFacelet =
        corners.corners[CubeCornerPosition.urf]!.getColorBasedOnPosition(
      CubeCornerPosition.urf,
      Face.up,
    );
    return urfUpFacelet.toString();
  }
}
