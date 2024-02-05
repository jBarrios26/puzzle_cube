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
    corners.b();
    edge.b();
    centers.b();
    movesPerformed++;
  }

  @override
  void b2() {
    corners.b2();
    edge.b2();
    centers.b2();
    movesPerformed++;
  }

  @override
  void bAntiClockwise() {
    corners.bAntiClockwise();
    edge.bAntiClockwise();
    centers.bAntiClockwise();
    movesPerformed++;
  }

  @override
  void d() {
    corners.d();
    edge.d();
    centers.d();
    movesPerformed++;
  }

  @override
  void d2() {
    corners.d2();
    edge.d2();
    centers.d2();
    movesPerformed++;
  }

  @override
  void dAntiClockwise() {
    corners.dAntiClockwise();
    edge.dAntiClockwise();
    centers.dAntiClockwise();
    movesPerformed++;
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
    corners.f2();
    edge.f2();
    centers.f2();
    movesPerformed++;
  }

  @override
  void fAntiClockwise() {
    corners.fAntiClockwise();
    edge.fAntiClockwise();
    centers.fAntiClockwise();
    movesPerformed++;
  }

  @override
  void l() {
    corners.l();
    edge.l();
    centers.l();
    movesPerformed++;
  }

  @override
  void l2() {
    corners.l2();
    edge.l2();
    centers.l2();
    movesPerformed++;
  }

  @override
  void lAntiClockwise() {
    corners.lAntiClockwise();
    edge.lAntiClockwise();
    centers.lAntiClockwise();
    movesPerformed++;
  }

  @override
  void r() {
    corners.r();
    edge.r();
    centers.r();
    movesPerformed++;
  }

  @override
  void r2() {
    corners.r2();
    edge.r2();
    centers.r2();
    movesPerformed++;
  }

  @override
  void rAntiClockwise() {
    corners.rAntiClockwise();
    edge.rAntiClockwise();
    centers.rAntiClockwise();
    movesPerformed++;
  }

  @override
  void u() {
    corners.u();
    edge.u();
    centers.u();
    movesPerformed++;
  }

  @override
  void u2() {
    u();
    u();
  }

  @override
  void uAntiClockwise() {
    corners.uAntiClockwise();
    edge.uAntiClockwise();
    centers.uAntiClockwise();
    movesPerformed++;
  }
}
