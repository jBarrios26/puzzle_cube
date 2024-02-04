import 'package:puzzle_cube/puzzle_cube.dart';

class Centers3x3 extends Centers {
  Centers3x3({required super.centers});

  @override
  void b() {
    for (var element in centers[Face.back]!) {
      element.rotateClockwise();
    }
  }

  @override
  void b2() {
    b();
    b();
  }

  @override
  void bAntiClockwise() {
    b();
  }

  @override
  void d() {
    for (var element in centers[Face.down]!) {
      element.rotateClockwise();
    }
  }

  @override
  void d2() {
    d();
    d();
  }

  @override
  void dAntiClockwise() {
    d();
  }

  @override
  void f() {
    for (var element in centers[Face.front]!) {
      element.rotateClockwise();
    }
  }

  @override
  void f2() {
    f();
    f();
  }

  @override
  void fAntiClockwise() {
    f();
  }

  @override
  void l() {
    for (var element in centers[Face.left]!) {
      element.rotateClockwise();
    }
  }

  @override
  void l2() {
    l();
  }

  @override
  void lAntiClockwise() {
    l();
  }

  @override
  void r() {
    for (var element in centers[Face.right]!) {
      element.rotateClockwise();
    }
  }

  @override
  void r2() {
    r();
    r();
  }

  @override
  void rAntiClockwise() {
    r();
  }

  @override
  void u() {
    for (var element in centers[Face.up]!) {
      element.rotateClockwise();
    }
  }

  @override
  void u2() {
    u();
    u();
  }

  @override
  void uAntiClockwise() {
    u();
  }
}
