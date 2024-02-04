import 'package:puzzle_cube/3x3/constant.dart';
import 'package:puzzle_cube/puzzle_cube.dart';

class Edges3x3 extends Edges {
  Edges3x3({required super.edges});

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
    final buffer = edges[(EdgePosition.df, edgeFirstLevel)];
    edges[(EdgePosition.df, edgeFirstLevel)] =
        edges[(EdgePosition.dl, edgeFirstLevel)]!;

    edges[(EdgePosition.dl, edgeFirstLevel)] =
        edges[(EdgePosition.db, edgeFirstLevel)]!;

    edges[(EdgePosition.db, edgeFirstLevel)] =
        edges[(EdgePosition.dr, edgeFirstLevel)]!;

    edges[(EdgePosition.dr, edgeFirstLevel)] = buffer!;
  }

  @override
  void d2() {
    d();
    d();
  }

  @override
  void dAntiClockwise() {
    final buffer = edges[(EdgePosition.df, edgeFirstLevel)];
    edges[(EdgePosition.df, edgeFirstLevel)] =
        edges[(EdgePosition.dr, edgeFirstLevel)]!;

    edges[(EdgePosition.dr, edgeFirstLevel)] =
        edges[(EdgePosition.db, edgeFirstLevel)]!;

    edges[(EdgePosition.db, edgeFirstLevel)] =
        edges[(EdgePosition.dl, edgeFirstLevel)]!;

    edges[(EdgePosition.dl, edgeFirstLevel)] = buffer!;
  }

  @override
  void f() {
    final buffer = edges[(EdgePosition.uf, edgeFirstLevel)];
    edges[(EdgePosition.uf, edgeFirstLevel)] =
        edges[(EdgePosition.fl, edgeFirstLevel)]!;
    edges[(EdgePosition.uf, edgeFirstLevel)]!.rotateClockwise();

    edges[(EdgePosition.fl, edgeFirstLevel)] =
        edges[(EdgePosition.df, edgeFirstLevel)]!;
    edges[(EdgePosition.fl, edgeFirstLevel)]!.rotateClockwise();

    edges[(EdgePosition.df, edgeFirstLevel)] =
        edges[(EdgePosition.fr, edgeFirstLevel)]!;
    edges[(EdgePosition.df, edgeFirstLevel)]!.rotateClockwise();

    edges[(EdgePosition.fr, edgeFirstLevel)] = buffer!;
    edges[(EdgePosition.fr, edgeFirstLevel)]!.rotateClockwise();
  }

  @override
  void f2() {
    f();
    f();
  }

  @override
  void fAntiClockwise() {
    final buffer = edges[(EdgePosition.uf, edgeFirstLevel)];

    edges[(EdgePosition.uf, edgeFirstLevel)] =
        edges[(EdgePosition.fr, edgeFirstLevel)]!;
    edges[(EdgePosition.uf, edgeFirstLevel)]!.rotateClockwise();

    edges[(EdgePosition.fr, edgeFirstLevel)] =
        edges[(EdgePosition.df, edgeFirstLevel)]!;
    edges[(EdgePosition.fr, edgeFirstLevel)]!.rotateClockwise();

    edges[(EdgePosition.df, edgeFirstLevel)] =
        edges[(EdgePosition.fl, edgeFirstLevel)]!;
    edges[(EdgePosition.df, edgeFirstLevel)]!.rotateClockwise();

    edges[(EdgePosition.fl, edgeFirstLevel)] = buffer!;
    edges[(EdgePosition.fl, edgeFirstLevel)]!.rotateClockwise();
  }

  @override
  void l() {
    final buffer = edges[(EdgePosition.ul, edgeFirstLevel)];

    edges[(EdgePosition.ul, edgeFirstLevel)] =
        edges[(EdgePosition.bl, edgeFirstLevel)]!;

    edges[(EdgePosition.bl, edgeFirstLevel)] =
        edges[(EdgePosition.dl, edgeFirstLevel)]!;

    edges[(EdgePosition.dl, edgeFirstLevel)] =
        edges[(EdgePosition.fl, edgeFirstLevel)]!;

    edges[(EdgePosition.fl, edgeFirstLevel)] = buffer!;
  }

  @override
  void l2() {
    l();
    l();
  }

  @override
  void lAntiClockwise() {
    final buffer = edges[(EdgePosition.ul, edgeFirstLevel)];

    edges[(EdgePosition.ul, edgeFirstLevel)] =
        edges[(EdgePosition.fl, edgeFirstLevel)]!;

    edges[(EdgePosition.fl, edgeFirstLevel)] =
        edges[(EdgePosition.dl, edgeFirstLevel)]!;

    edges[(EdgePosition.dl, edgeFirstLevel)] =
        edges[(EdgePosition.bl, edgeFirstLevel)]!;

    edges[(EdgePosition.bl, edgeFirstLevel)] = buffer!;
  }

  @override
  void r() {
    final buffer = edges[(EdgePosition.ur, edgeFirstLevel)];

    edges[(EdgePosition.ur, edgeFirstLevel)] =
        edges[(EdgePosition.fr, edgeFirstLevel)]!;

    edges[(EdgePosition.fr, edgeFirstLevel)] =
        edges[(EdgePosition.dr, edgeFirstLevel)]!;

    edges[(EdgePosition.dr, edgeFirstLevel)] =
        edges[(EdgePosition.br, edgeFirstLevel)]!;

    edges[(EdgePosition.br, edgeFirstLevel)] = buffer!;
  }

  @override
  void r2() {
    r();
    r();
  }

  @override
  void rAntiClockwise() {
    final buffer = edges[(EdgePosition.ur, edgeFirstLevel)];

    edges[(EdgePosition.ur, edgeFirstLevel)] =
        edges[(EdgePosition.br, edgeFirstLevel)]!;

    edges[(EdgePosition.br, edgeFirstLevel)] =
        edges[(EdgePosition.dr, edgeFirstLevel)]!;

    edges[(EdgePosition.dr, edgeFirstLevel)] =
        edges[(EdgePosition.fr, edgeFirstLevel)]!;

    edges[(EdgePosition.fr, edgeFirstLevel)] = buffer!;
  }

  @override
  void u() {
    final buffer = edges[(EdgePosition.uf, edgeFirstLevel)];
    edges[(EdgePosition.uf, edgeFirstLevel)] =
        edges[(EdgePosition.ur, edgeFirstLevel)]!;

    edges[(EdgePosition.ur, edgeFirstLevel)] =
        edges[(EdgePosition.ub, edgeFirstLevel)]!;

    edges[(EdgePosition.ub, edgeFirstLevel)] =
        edges[(EdgePosition.ul, edgeFirstLevel)]!;

    edges[(EdgePosition.ul, edgeFirstLevel)] = buffer!;
  }

  @override
  void u2() {
    u();
    u();
  }

  @override
  void uAntiClockwise() {
    final buffer = edges[(EdgePosition.uf, edgeFirstLevel)];
    edges[(EdgePosition.uf, edgeFirstLevel)] =
        edges[(EdgePosition.ul, edgeFirstLevel)]!;

    edges[(EdgePosition.ul, edgeFirstLevel)] =
        edges[(EdgePosition.ub, edgeFirstLevel)]!;

    edges[(EdgePosition.ub, edgeFirstLevel)] =
        edges[(EdgePosition.ur, edgeFirstLevel)]!;

    edges[(EdgePosition.ur, edgeFirstLevel)] = buffer!;
  }
}
