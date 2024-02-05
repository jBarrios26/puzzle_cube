import 'package:puzzle_cube/3x3/constant.dart';
import 'package:puzzle_cube/3x3/factory/factory.dart';
import 'package:puzzle_cube/model/model.dart';

class Corners3x3 extends Corners {
  Corners3x3({required super.corners});

  factory Corners3x3.solved({final ColorScheme? colors}) {
    return Corners3x3(
      corners: Corner3x3Factory.buildClean3x3CornerCubies(
        colors: colors ?? classicColorScheme,
      ),
    );
  }

  @override
  void b() {
    final buffer = corners[CornerPosition.ulb];
    corners[CornerPosition.ulb] = corners[CornerPosition.ubr]!;
    corners[CornerPosition.ulb]!.rotateAntiClockwise();
    corners[CornerPosition.ubr] = corners[CornerPosition.drb]!;
    corners[CornerPosition.ubr]!.rotateClockwise();
    corners[CornerPosition.drb] = corners[CornerPosition.dbl]!;
    corners[CornerPosition.drb]!.rotateAntiClockwise();
    corners[CornerPosition.dbl] = buffer!;
    corners[CornerPosition.dbl]!.rotateClockwise();
  }

  @override
  void b2() {
    b();
    b();
  }

  @override
  void bAntiClockwise() {
    final buffer = corners[CornerPosition.ulb];
    corners[CornerPosition.ulb] = corners[CornerPosition.dbl]!;
    corners[CornerPosition.ulb]!.rotateAntiClockwise();
    corners[CornerPosition.dbl] = corners[CornerPosition.drb]!;
    corners[CornerPosition.dbl]!.rotateClockwise();
    corners[CornerPosition.drb] = corners[CornerPosition.ubr]!;
    corners[CornerPosition.drb]!.rotateAntiClockwise();
    corners[CornerPosition.ubr] = buffer!;
    corners[CornerPosition.ubr]!.rotateClockwise();
  }

  @override
  void d() {
    final buffer = corners[CornerPosition.dlf];
    corners[CornerPosition.dlf] = corners[CornerPosition.dbl]!;
    corners[CornerPosition.dbl] = corners[CornerPosition.drb]!;
    corners[CornerPosition.drb] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.dfr] = buffer!;
  }

  @override
  void d2() {
    d();
    d();
  }

  @override
  void dAntiClockwise() {
    final buffer = corners[CornerPosition.dlf];
    corners[CornerPosition.dlf] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.dfr] = corners[CornerPosition.drb]!;
    corners[CornerPosition.drb] = corners[CornerPosition.dbl]!;
    corners[CornerPosition.dbl] = buffer!;
  }

  @override
  void f() {
    final buffer = corners[CornerPosition.ufl];
    corners[CornerPosition.ufl] = corners[CornerPosition.dlf]!;
    corners[CornerPosition.ufl]!.rotateClockwise();
    corners[CornerPosition.dlf] = corners[CornerPosition.dfr]!;
    corners[CornerPosition.dlf]!.rotateAntiClockwise();
    corners[CornerPosition.dfr] = corners[CornerPosition.urf]!;
    corners[CornerPosition.dfr]!.rotateClockwise();
    corners[CornerPosition.urf] = buffer!;
    corners[CornerPosition.urf]!.rotateAntiClockwise();
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
