import 'package:puzzle_cube/model/model.dart';

class Cube3x3 extends Cube {
  int movesPerformed = 0;

  Cube3x3({
    required super.centers,
    required super.corners,
    required super.edge,
  });

  @override
  void b() {
    // TODO: implement b
  }

  @override
  void b2() {
    // TODO: implement b2
  }

  @override
  void bAntiClockwise() {
    // TODO: implement bAntiClockwise
  }

  @override
  void d() {
    // TODO: implement d
  }

  @override
  void d2() {
    // TODO: implement d2
  }

  @override
  void dAntiClockwise() {
    // TODO: implement dAntiClockwise
  }

  @override
  void f() {
    corners.f();
    edge.f();
    centers.f();
    movesPerformed++;
  }

  @override
  void f2() {
    // TODO: implement f2
  }

  @override
  void fAntiClockwise() {
    // TODO: implement fAntiClockwise
  }

  @override
  void l() {
    // TODO: implement l
  }

  @override
  void l2() {
    // TODO: implement l2
  }

  @override
  void lAntiClockwise() {
    // TODO: implement lAntiClockwise
  }

  @override
  void r() {
    // TODO: implement r
  }

  @override
  void r2() {
    // TODO: implement r2
  }

  @override
  void rAntiClockwise() {
    // TODO: implement rAntiClockwise
  }

  @override
  void u() {
    // TODO: implement u
  }

  @override
  void u2() {
    u();
    u();
  }

  @override
  void uAntiClockwise() {
    // TODO: implement uAntiClockwise
  }
}
