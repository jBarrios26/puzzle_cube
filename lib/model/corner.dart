import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/facelet.dart';
import 'package:puzzle_cube/model/moves/moves.dart';

class CornerCoord {
  final Face a;
  final Face b;
  final Face c;

  CornerCoord({
    required this.a,
    required this.b,
    required this.c,
  });
}

class Cube3By3CornerCoord {
  static CornerCoord urf = CornerCoord(
    a: Face.up,
    b: Face.right,
    c: Face.front,
  );

  static CornerCoord ufl = CornerCoord(
    a: Face.up,
    b: Face.front,
    c: Face.left,
  );
  static CornerCoord ulb = CornerCoord(
    a: Face.up,
    b: Face.left,
    c: Face.back,
  );

  static CornerCoord ubr = CornerCoord(
    a: Face.up,
    b: Face.back,
    c: Face.right,
  );

  static CornerCoord dfr = CornerCoord(
    a: Face.down,
    b: Face.front,
    c: Face.right,
  );
  static CornerCoord dlf = CornerCoord(
    a: Face.down,
    b: Face.left,
    c: Face.front,
  );

  static CornerCoord drb = CornerCoord(
    a: Face.up,
    b: Face.right,
    c: Face.back,
  );

  static CornerCoord dbl = CornerCoord(
    a: Face.up,
    b: Face.back,
    c: Face.left,
  );
}

class Corners {
  final Map<CornerCoord, Corner> corners;

  Corners({
    required this.corners,
  });
}

class Corner implements Rotation {
  int orientation;
  final Map<int, Facelet> cornerFacelets;

  Corner({
    required this.cornerFacelets,
    this.orientation = 0,
  })  : assert(cornerFacelets.length == 3),
        assert(orientation < 2);

  @override
  int get getOrientation => orientation % 3;

  @override
  set setOrientation(
    int orientation,
  ) =>
      this.orientation = orientation % 3;

  @override
  void rotateAntiClockwise() {
    setOrientation = orientation + 2;
  }

  @override
  void rotateClockwise() {
    setOrientation = orientation + 1;
  }
}
