import 'package:puzzle_cube/model/corner_position.dart';
import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/facelet.dart';
import 'package:puzzle_cube/model/moves/moves.dart';

class InvalidFaceException implements Exception {
  final String message;

  InvalidFaceException(this.message);
}

class CubeCornerPosition {
  static const CornerPosition urf = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.right,
    thirdFace: Face.front,
  );

  static const CornerPosition ufl = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.front,
    thirdFace: Face.left,
  );
  static const CornerPosition ulb = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.left,
    thirdFace: Face.back,
  );

  static const CornerPosition ubr = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.back,
    thirdFace: Face.right,
  );

  static const CornerPosition dfr = CornerPosition(
    firstFace: Face.down,
    secondFace: Face.front,
    thirdFace: Face.right,
  );
  static const CornerPosition dlf = CornerPosition(
    firstFace: Face.down,
    secondFace: Face.left,
    thirdFace: Face.front,
  );

  static const CornerPosition drb = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.right,
    thirdFace: Face.back,
  );

  static const CornerPosition dbl = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.back,
    thirdFace: Face.left,
  );

  static const List<CornerPosition> cornerPositionList = [
    urf,
    ulb,
    ufl,
    ubr,
    dbl,
    drb,
    dfr,
    dlf
  ];
}

class Corners {
  final Map<CornerPosition, Corner> corners;

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

  Facelet getFacelet(final int faceletDirection) {
    return cornerFacelets[faceletDirection % 3] ?? Facelet.empty();
  }

  Facelet getColorBasedOnPosition(CornerPosition position, Face face) {
    switch (position) {
      case CubeCornerPosition.urf:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.right:
            return getFacelet(orientation + 1);
          case Face.front:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.ufl:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.front:
            return getFacelet(orientation + 1);
          case Face.left:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.ulb:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.left:
            return getFacelet(orientation + 1);
          case Face.back:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.ubr:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.back:
            return getFacelet(orientation + 1);
          case Face.right:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.dfr:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.front:
            return getFacelet(orientation + 1);
          case Face.right:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.dlf:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.left:
            return getFacelet(orientation + 1);
          case Face.front:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.drb:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.right:
            return getFacelet(orientation + 1);
          case Face.back:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case CubeCornerPosition.dbl:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.back:
            return getFacelet(orientation + 1);
          case Face.left:
            return getFacelet(orientation + 2);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
    }
    return getFacelet(0);
  }

  @override
  void rotateAntiClockwise() {
    setOrientation = orientation + 2;
  }

  @override
  void rotateClockwise() {
    setOrientation = orientation + 1;
  }
}
