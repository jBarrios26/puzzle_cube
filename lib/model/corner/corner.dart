import 'package:puzzle_cube/exception/invalid_face_exception.dart';
import 'package:puzzle_cube/model/corner/corner_position.dart';
import 'package:puzzle_cube/model/face/face.dart';
import 'package:puzzle_cube/model/face/facelet.dart';
import 'package:puzzle_cube/model/moves/rotation.dart';

class Corner implements Rotation {
  int orientation;
  final Map<int, Facelet> cornerFacelets;

  Corner({
    required this.cornerFacelets,
    this.orientation = 0,
  })  : assert(cornerFacelets.length == 3),
        assert(orientation <= 2);

  @override
  int get getOrientation => orientation % 3;

  @override
  set setOrientation(
    int orientation,
  ) =>
      this.orientation = orientation % 3;

  @override
  String toString() {
    return getFacelet(0).toString() +
        getFacelet(1).toString() +
        getFacelet(2).toString();
  }

  Facelet getFacelet(final int faceletDirection) {
    return cornerFacelets[faceletDirection % 3] ?? Facelet.empty();
  }

  Facelet getColorBasedOnPosition(CornerPosition position, Face face) {
    switch (position) {
      case CornerPosition.urf:
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
      case CornerPosition.ufl:
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
      case CornerPosition.ulb:
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
      case CornerPosition.ubr:
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
      case CornerPosition.dfr:
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
      case CornerPosition.dlf:
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
      case CornerPosition.drb:
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
      case CornerPosition.dbl:
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
