import 'package:puzzle_cube/puzzle_cube.dart';

class Centers3x3 extends Centers {
  Centers3x3({required super.centers});

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
    // TODO: implement u2
  }

  @override
  void uAntiClockwise() {
    // TODO: implement uAntiClockwise
  }
}
