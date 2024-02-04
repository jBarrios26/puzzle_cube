import 'package:puzzle_cube/model/model.dart';

class Corners3x3 extends Corners {
  Corners3x3({required super.corners});

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
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.dlf]!;
    corners[CornerPosition.ufl]!.rotateAntiClockwise();
    corners[CornerPosition.dlf] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.dlf]!.rotateClockwise();
    corners[CornerPosition.dfr] = corners[CornerPosition.urf]!;
    corners[CornerPosition.dfr]!.rotateAntiClockwise();
    corners[CornerPosition.urf] = buffer!;
    corners[CornerPosition.urf]!.rotateClockwise();
  }

  @override
  void f2() {
    f();
    f();
  }

  @override
  void fAntiClockwise() {
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.urf]!;
    corners[CornerPosition.ufl]!.rotateClockwise();
    corners[CornerPosition.urf] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.urf]!.rotateAntiClockwise();
    corners[CornerPosition.dfr] = corners[CornerPosition.dlf]!;
    corners[CornerPosition.dfr]!.rotateClockwise();
    corners[CornerPosition.dlf] = buffer!;
    corners[CornerPosition.dlf]!.rotateAntiClockwise();
  }

  @override
  void l() {
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.ulb]!;
    corners[CornerPosition.ufl]!.rotateAntiClockwise();
    corners[CornerPosition.ulb] = corners[CornerPosition.dbl]!;
    corners[CornerPosition.ulb]!.rotateClockwise();
    corners[CornerPosition.dbl] = corners[CornerPosition.dlf]!;
    corners[CornerPosition.dbl]!.rotateAntiClockwise();
    corners[CornerPosition.dlf] = buffer!;
    corners[CornerPosition.dlf]!.rotateClockwise();
  }

  @override
  void l2() {
    l();
    l();
  }

  @override
  void lAntiClockwise() {
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.dlf]!;
    corners[CornerPosition.ufl]!.rotateAntiClockwise();
    corners[CornerPosition.dlf] = corners[CornerPosition.dbl]!;
    corners[CornerPosition.dlf]!.rotateClockwise();
    corners[CornerPosition.dbl] = corners[CornerPosition.ulb]!;
    corners[CornerPosition.dbl]!.rotateAntiClockwise();
    corners[CornerPosition.ulb] = buffer!;
    corners[CornerPosition.ulb]!.rotateClockwise();
  }

  @override
  void r() {
    final buffer = corners[CornerPosition.urf];
    corners[CornerPosition.urf] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.urf]!.rotateClockwise();
    corners[CornerPosition.dfr] = corners[CornerPosition.drb]!;
    corners[CornerPosition.dfr]!.rotateAntiClockwise();
    corners[CornerPosition.drb] = corners[CornerPosition.ubr]!;
    corners[CornerPosition.ubr]!.rotateClockwise();
    corners[CornerPosition.ubr] = buffer!;
    corners[CornerPosition.urf]!.rotateAntiClockwise();
  }

  @override
  void r2() {
    r();
    r();
  }

  @override
  void rAntiClockwise() {
    final buffer = corners[CornerPosition.urf];
    corners[CornerPosition.urf] = corners[CornerPosition.ubr]!;
    corners[CornerPosition.urf]!.rotateClockwise();
    corners[CornerPosition.ubr] = corners[CornerPosition.drb]!;
    corners[CornerPosition.ubr]!.rotateAntiClockwise();
    corners[CornerPosition.drb] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.drb]!.rotateClockwise();
    corners[CornerPosition.dfr] = buffer!;
    corners[CornerPosition.dfr]!.rotateAntiClockwise();
  }

  @override
  void u() {
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.urf]!;
    corners[CornerPosition.urf] = corners[CornerPosition.ubr]!;
    corners[CornerPosition.ubr] = corners[CornerPosition.ulb]!;
    corners[CornerPosition.ulb] = buffer!;
  }

  @override
  void u2() {
    u();
    u();
  }

  @override
  void uAntiClockwise() {
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.ulb]!;
    corners[CornerPosition.ulb] = corners[CornerPosition.ubr]!;
    corners[CornerPosition.ubr] = corners[CornerPosition.urf]!;
    corners[CornerPosition.urf] = buffer!;
  }
}
