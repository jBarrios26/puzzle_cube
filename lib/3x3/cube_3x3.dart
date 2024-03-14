import 'package:puzzle_cube/3x3/scrambler.dart';
import 'package:puzzle_cube/3x3/three_by_three.dart';
import 'package:puzzle_cube/model/model.dart';

class Cube3x3 extends Cube {
  int movesPerformed = 0;
  Map<Face, CubeColor> colorScheme;

  Cube3x3(
      {required super.centers,
      required super.corners,
      required super.edge,
      this.colorScheme = classicColorScheme});

  factory Cube3x3.solved({final Map<Face, CubeColor>? color}) {
    return Cube3x3(
      centers: Centers3x3.solved(colors: color ?? classicColorScheme),
      corners: Corners3x3.solved(colors: color ?? classicColorScheme),
      edge: Edges3x3.solved(colors: color ?? classicColorScheme),
    );
  }

  void scramble(final Scrambler scramble) {
    final cubeScrambled = scramble.scrambleCube(this);
    centers = cubeScrambled.result.centers;
    corners = cubeScrambled.result.corners;
    edge = cubeScrambled.result.edge;
  }

  @override
  void b() {
    corners.b();
    edge.b();
    centers.b();
    movesPerformed++;
  }

  @override
  void b2() {
    b();
    b();
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
    d();
    d();
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
    f();
    f();
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
    l();
    l();
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
    r();
    r();
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

  List<Facelet> getFaceletByFace(Face face) {
    switch (face) {
      case Face.up:
        final u1 = corners.corners[CornerPosition.ulb]!.getColorBasedOnPosition(
          CornerPosition.ulb,
          Face.up,
        );
        final u2 = edge.edges[(EdgePosition.ub, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.ub,
          Face.up,
        );

        final u3 = corners.corners[CornerPosition.ubr]!.getColorBasedOnPosition(
          CornerPosition.ubr,
          Face.up,
        );
        final u4 = edge.edges[(EdgePosition.ul, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.ul,
          Face.up,
        );
        final u5 = centers.centers[face]![0].facelet;
        final u6 = edge.edges[(EdgePosition.ur, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.ur,
          Face.up,
        );
        final u7 = corners.corners[CornerPosition.ufl]!.getColorBasedOnPosition(
          CornerPosition.ufl,
          Face.up,
        );
        final u8 = edge.edges[(EdgePosition.uf, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.uf,
          Face.up,
        );
        final u9 = corners.corners[CornerPosition.urf]!.getColorBasedOnPosition(
          CornerPosition.urf,
          Face.up,
        );
        return [u1, u2, u3, u4, u5, u6, u7, u8, u9];
      case Face.front:
        final f1 = corners.corners[CornerPosition.ufl]!.getColorBasedOnPosition(
          CornerPosition.ufl,
          Face.front,
        );
        final f2 = edge.edges[(EdgePosition.uf, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.uf,
          Face.front,
        );

        final f3 = corners.corners[CornerPosition.urf]!.getColorBasedOnPosition(
          CornerPosition.urf,
          Face.front,
        );
        final f4 = edge.edges[(EdgePosition.fl, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.fl,
          Face.front,
        );
        final f5 = centers.centers[face]![0].facelet;
        final f6 = edge.edges[(EdgePosition.fr, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.fr,
          Face.front,
        );
        final f7 = corners.corners[CornerPosition.dlf]!.getColorBasedOnPosition(
          CornerPosition.dlf,
          Face.front,
        );
        final f8 = edge.edges[(EdgePosition.df, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.df,
          Face.front,
        );
        final f9 = corners.corners[CornerPosition.dfr]!.getColorBasedOnPosition(
          CornerPosition.dfr,
          Face.front,
        );
        return [f1, f2, f3, f4, f5, f6, f7, f8, f9];
      case Face.left:
        final l1 = corners.corners[CornerPosition.ulb]!.getColorBasedOnPosition(
          CornerPosition.ulb,
          Face.left,
        );
        final l2 = edge.edges[(EdgePosition.ul, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.ul,
          Face.left,
        );
        final l3 = corners.corners[CornerPosition.ufl]!.getColorBasedOnPosition(
          CornerPosition.ufl,
          Face.left,
        );
        final l4 = edge.edges[(EdgePosition.dl, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.dl,
          Face.left,
        );
        final l5 = centers.centers[face]![0].facelet;
        final l6 = edge.edges[(EdgePosition.fl, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.fl,
          Face.left,
        );
        final l7 = corners.corners[CornerPosition.dbl]!.getColorBasedOnPosition(
          CornerPosition.dbl,
          Face.left,
        );
        final l8 = edge.edges[(EdgePosition.dl, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.dl,
          Face.left,
        );
        final l9 = corners.corners[CornerPosition.dlf]!.getColorBasedOnPosition(
          CornerPosition.dlf,
          Face.left,
        );
        return [l1, l2, l3, l4, l5, l6, l7, l8, l9];
      case Face.right:
        final r1 = corners.corners[CornerPosition.urf]!.getColorBasedOnPosition(
          CornerPosition.urf,
          Face.right,
        );
        final r2 = edge.edges[(EdgePosition.ur, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.ur,
          Face.right,
        );
        final r3 = corners.corners[CornerPosition.ubr]!.getColorBasedOnPosition(
          CornerPosition.ubr,
          Face.right,
        );
        final r4 = edge.edges[(EdgePosition.fr, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.fr,
          Face.right,
        );
        final r5 = centers.centers[face]![0].facelet;
        final r6 = edge.edges[(EdgePosition.br, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.br,
          Face.right,
        );
        final r7 = corners.corners[CornerPosition.dfr]!.getColorBasedOnPosition(
          CornerPosition.dfr,
          Face.right,
        );
        final r8 = edge.edges[(EdgePosition.dr, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.dr,
          Face.right,
        );
        final r9 = corners.corners[CornerPosition.drb]!.getColorBasedOnPosition(
          CornerPosition.drb,
          Face.right,
        );
        return [
          r1,
          r2,
          r3,
          r4,
          r5,
          r6,
          r7,
          r8,
          r9,
        ];
      case Face.back:
        final b1 = corners.corners[CornerPosition.ubr]!.getColorBasedOnPosition(
          CornerPosition.ubr,
          Face.back,
        );
        final b2 = edge.edges[(EdgePosition.ub, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.ub,
          Face.back,
        );
        final b3 = corners.corners[CornerPosition.ulb]!.getColorBasedOnPosition(
          CornerPosition.ulb,
          Face.back,
        );
        final b4 = edge.edges[(EdgePosition.br, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.br,
          Face.back,
        );
        final b5 = centers.centers[face]![0].facelet;
        final b6 = edge.edges[(EdgePosition.bl, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.bl,
          Face.back,
        );
        final b7 = corners.corners[CornerPosition.drb]!.getColorBasedOnPosition(
          CornerPosition.drb,
          Face.back,
        );
        final b8 = edge.edges[(EdgePosition.db, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.db,
          Face.back,
        );
        final b9 = corners.corners[CornerPosition.dbl]!.getColorBasedOnPosition(
          CornerPosition.dbl,
          Face.back,
        );
        return [
          b1,
          b2,
          b3,
          b4,
          b5,
          b6,
          b7,
          b8,
          b9,
        ];
      case Face.down:
        final d1 = corners.corners[CornerPosition.dlf]!.getColorBasedOnPosition(
          CornerPosition.dlf,
          Face.down,
        );
        final d2 = edge.edges[(EdgePosition.df, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.df,
          Face.down,
        );
        final d3 = corners.corners[CornerPosition.dfr]!.getColorBasedOnPosition(
          CornerPosition.dfr,
          Face.down,
        );
        final d4 = edge.edges[(EdgePosition.dl, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.dl,
          Face.down,
        );
        final d5 = centers.centers[face]![0].facelet;
        final d6 = edge.edges[(EdgePosition.dr, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.dr,
          Face.down,
        );
        final d7 = corners.corners[CornerPosition.dbl]!.getColorBasedOnPosition(
          CornerPosition.dbl,
          Face.down,
        );
        final d8 = edge.edges[(EdgePosition.db, edgeFirstLevel)]!
            .getFaceletBasedByPosition(
          EdgePosition.db,
          Face.down,
        );
        final d9 = corners.corners[CornerPosition.drb]!.getColorBasedOnPosition(
          CornerPosition.drb,
          Face.down,
        );
        return [
          d1,
          d2,
          d3,
          d4,
          d5,
          d6,
          d7,
          d8,
          d9,
        ];
      default:
    }
    return [];
  }

  @override
  String toString() {
    //UFL
    final u7 = corners.corners[CornerPosition.ufl]!.getColorBasedOnPosition(
      CornerPosition.ufl,
      Face.up,
    );
    final f1 = corners.corners[CornerPosition.ufl]!.getColorBasedOnPosition(
      CornerPosition.ufl,
      Face.front,
    );
    final l3 = corners.corners[CornerPosition.ufl]!.getColorBasedOnPosition(
      CornerPosition.ufl,
      Face.left,
    );

    //URF
    final u9 = corners.corners[CornerPosition.urf]!.getColorBasedOnPosition(
      CornerPosition.urf,
      Face.up,
    );
    final r1 = corners.corners[CornerPosition.urf]!.getColorBasedOnPosition(
      CornerPosition.urf,
      Face.right,
    );
    final f3 = corners.corners[CornerPosition.urf]!.getColorBasedOnPosition(
      CornerPosition.urf,
      Face.front,
    );
    //UBR
    final u3 = corners.corners[CornerPosition.ubr]!.getColorBasedOnPosition(
      CornerPosition.ubr,
      Face.up,
    );
    final b1 = corners.corners[CornerPosition.ubr]!.getColorBasedOnPosition(
      CornerPosition.ubr,
      Face.back,
    );
    final r3 = corners.corners[CornerPosition.ubr]!.getColorBasedOnPosition(
      CornerPosition.ubr,
      Face.right,
    );

    //ULB
    final u1 = corners.corners[CornerPosition.ulb]!.getColorBasedOnPosition(
      CornerPosition.ulb,
      Face.up,
    );
    final l1 = corners.corners[CornerPosition.ulb]!.getColorBasedOnPosition(
      CornerPosition.ulb,
      Face.left,
    );
    final b3 = corners.corners[CornerPosition.ulb]!.getColorBasedOnPosition(
      CornerPosition.ulb,
      Face.back,
    );

    //DLF
    final d1 = corners.corners[CornerPosition.dlf]!.getColorBasedOnPosition(
      CornerPosition.dlf,
      Face.down,
    );
    final l9 = corners.corners[CornerPosition.dlf]!.getColorBasedOnPosition(
      CornerPosition.dlf,
      Face.left,
    );
    final f7 = corners.corners[CornerPosition.dlf]!.getColorBasedOnPosition(
      CornerPosition.dlf,
      Face.front,
    );

    //DFR
    final d3 = corners.corners[CornerPosition.dfr]!.getColorBasedOnPosition(
      CornerPosition.dfr,
      Face.down,
    );
    final f9 = corners.corners[CornerPosition.dfr]!.getColorBasedOnPosition(
      CornerPosition.dfr,
      Face.front,
    );
    final r7 = corners.corners[CornerPosition.dfr]!.getColorBasedOnPosition(
      CornerPosition.dfr,
      Face.right,
    );

    //DRB
    final d9 = corners.corners[CornerPosition.drb]!.getColorBasedOnPosition(
      CornerPosition.drb,
      Face.down,
    );
    final r9 = corners.corners[CornerPosition.drb]!.getColorBasedOnPosition(
      CornerPosition.drb,
      Face.right,
    );
    final b7 = corners.corners[CornerPosition.drb]!.getColorBasedOnPosition(
      CornerPosition.drb,
      Face.back,
    );

    //DBL
    final d7 = corners.corners[CornerPosition.dbl]!.getColorBasedOnPosition(
      CornerPosition.dbl,
      Face.down,
    );
    final l7 = corners.corners[CornerPosition.dbl]!.getColorBasedOnPosition(
      CornerPosition.dbl,
      Face.left,
    );
    final b9 = corners.corners[CornerPosition.dbl]!.getColorBasedOnPosition(
      CornerPosition.dbl,
      Face.back,
    );

    // UF
    final u8 = edge.edges[(EdgePosition.uf, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.uf,
      Face.up,
    );
    final f2 = edge.edges[(EdgePosition.uf, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.uf,
      Face.front,
    );

    // UR
    final u6 = edge.edges[(EdgePosition.ur, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.ur,
      Face.up,
    );
    final r2 = edge.edges[(EdgePosition.ur, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.ur,
      Face.right,
    );

    // UB
    final u2 = edge.edges[(EdgePosition.ub, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.ub,
      Face.up,
    );
    final b2 = edge.edges[(EdgePosition.ub, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.ub,
      Face.back,
    );

    // UL
    final u4 = edge.edges[(EdgePosition.ul, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.ul,
      Face.up,
    );
    final l2 = edge.edges[(EdgePosition.ul, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.ul,
      Face.left,
    );

    // FL
    final f4 = edge.edges[(EdgePosition.fl, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.fl,
      Face.front,
    );
    final l6 = edge.edges[(EdgePosition.fl, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.fl,
      Face.left,
    );

    // FR
    final f6 = edge.edges[(EdgePosition.fr, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.fr,
      Face.front,
    );
    final r4 = edge.edges[(EdgePosition.fr, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.fr,
      Face.right,
    );

    // BR
    final b4 = edge.edges[(EdgePosition.br, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.br,
      Face.back,
    );
    final r6 = edge.edges[(EdgePosition.br, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.br,
      Face.right,
    );

    // BL
    final b6 = edge.edges[(EdgePosition.bl, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.bl,
      Face.back,
    );
    final l4 = edge.edges[(EdgePosition.bl, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.bl,
      Face.left,
    );

    // DF
    final d2 = edge.edges[(EdgePosition.df, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.df,
      Face.down,
    );
    final f8 = edge.edges[(EdgePosition.df, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.df,
      Face.front,
    );

    // DR
    final d6 = edge.edges[(EdgePosition.dr, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.dr,
      Face.down,
    );
    final r8 = edge.edges[(EdgePosition.dr, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.dr,
      Face.right,
    );

    // DB
    final d8 = edge.edges[(EdgePosition.db, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.db,
      Face.down,
    );
    final b8 = edge.edges[(EdgePosition.db, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.db,
      Face.back,
    );

    // DL
    final d4 = edge.edges[(EdgePosition.dl, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.dl,
      Face.down,
    );
    final l8 = edge.edges[(EdgePosition.dl, edgeFirstLevel)]!
        .getFaceletBasedByPosition(
      EdgePosition.dl,
      Face.left,
    );

    final cubeTemplete = '''
               |$u1 $u2 $u3|
               |$u4 u5 $u6|
               |$u7 $u8 $u9|
      |$l1 $l2 $l3|$f1 $f2 $f3|$r1 $r2 $r3|$b1 $b2 $b3|
      |$l4 l5 $l6|$f4 f5 $f6|$r4 r5 $r6|$b4 b5 $b6|
      |$l7 $l8 $l9|$f7 $f8 $f9|$r7 $r8 $r9|$b7 $b8 $b9|
               |$d1 $d2 $d3|
               |$d4 d5 $d6|
               |$d7 $d8 $d9|
    ''';

    return cubeTemplete;
  }
}
