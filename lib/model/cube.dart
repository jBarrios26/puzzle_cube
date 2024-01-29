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
    final upCornerFacelets = corners.corners.keys.map((element) {
      if (element.a == Face.up ||
          element.c == Face.up ||
          element.c == Face.up) {
        final corner = corners.corners[element];
        if (corner == null) {
          return Facelet.empty();
        }
        return corner.cornerFacelets[corner.orientation] ?? Facelet.empty();
      }
      return Facelet.empty();
    });

    return upCornerFacelets
        .map((e) => e.name)
        .reduce((value, element) => '$element$value');
  }
}
