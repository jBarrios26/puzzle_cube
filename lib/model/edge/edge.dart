import 'package:puzzle_cube/exception/invalid_face_exception.dart';
import 'package:puzzle_cube/model/edge/edge_position.dart';
import 'package:puzzle_cube/model/face/face.dart';
import 'package:puzzle_cube/model/face/facelet.dart';
import 'package:puzzle_cube/model/moves/rotation.dart';

class Edge implements Rotation {
  int orientation;
  final Map<int, Facelet> edgeFacelets;

  Edge({
    required this.edgeFacelets,
    this.orientation = 0,
  })  : assert(edgeFacelets.length == 2),
        assert(orientation <= 1);

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

  Facelet getFacelet(final int faceletPosition) {
    return edgeFacelets[faceletPosition % 2] ?? Facelet.empty();
  }

  Facelet getFaceletBasedByPosition(
    final EdgePosition position,
    final Face face,
  ) {
    switch (position) {
      case EdgePosition.uf:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.front:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.ul:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.left:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.ub:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.back:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.ur:
        switch (face) {
          case Face.up:
            return getFacelet(orientation + 0);
          case Face.right:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.df:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.front:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.dl:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.left:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.db:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.back:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.dr:
        switch (face) {
          case Face.down:
            return getFacelet(orientation + 0);
          case Face.right:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.fr:
        switch (face) {
          case Face.front:
            return getFacelet(orientation + 0);
          case Face.right:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.fl:
        switch (face) {
          case Face.front:
            return getFacelet(orientation + 0);
          case Face.left:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.br:
        switch (face) {
          case Face.back:
            return getFacelet(orientation + 0);
          case Face.right:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
      case EdgePosition.bl:
        switch (face) {
          case Face.back:
            return getFacelet(orientation + 0);
          case Face.left:
            return getFacelet(orientation + 1);
          default:
            throw InvalidFaceException(
                '$face is not a valid cube face for this position');
        }
    }
    return getFacelet(0);
  }
}
