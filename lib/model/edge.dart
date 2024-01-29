import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/facelet.dart';
import 'package:puzzle_cube/model/moves/moves.dart';

class Edges {
  final Map<Face, Edge> edges;

  Edges({
    required this.edges,
  });
}

class Edge implements Rotation {
  int orientation;
  final Map<int, Facelet> edgeFacelets;

  Edge({
    required this.edgeFacelets,
    this.orientation = 0,
  })  : assert(edgeFacelets.length == 2),
        assert(orientation > 1);

  @override
  int get getOrientation => orientation % 2;

  @override
  set setOrientation(
    int orientation,
  ) =>
      this.orientation = orientation % 2;

  @override
  void rotateAntiClockwise() {
    setOrientation = (orientation + 1);
  }

  @override
  void rotateClockwise() {
    setOrientation = (orientation + 1);
  }
}
