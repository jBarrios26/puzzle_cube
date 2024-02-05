import 'package:puzzle_cube/3x3/constant.dart';
import 'package:puzzle_cube/model/model.dart';

class Edge3x3Factory {
  static Map<(EdgePosition, int), Edge> buildClean3x3EdgeCubies({
    required final Map<Face, CubeColor> colors,
  }) {
    return {
      (EdgePosition.ur, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.up,
            index: 6,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.right,
            index: 2,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        },
      ),
      (EdgePosition.uf, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.up,
            index: 8,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.front,
            index: 2,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
        },
      ),
      (EdgePosition.ul, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.up,
            index: 4,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.left,
            index: 2,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        },
      ),
      (EdgePosition.ub, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.up,
            index: 2,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.back,
            index: 2,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
        },
      ),
      (EdgePosition.fl, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.front,
            index: 4,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
          1: Facelet(
            face: Face.left,
            index: 6,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        },
      ),
      (EdgePosition.fr, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.front,
            index: 6,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
          1: Facelet(
            face: Face.right,
            index: 4,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        },
      ),
      (EdgePosition.br, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.back,
            index: 4,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
          1: Facelet(
            face: Face.right,
            index: 6,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        },
      ),
      (EdgePosition.bl, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.back,
            index: 6,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
          1: Facelet(
            face: Face.left,
            index: 4,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        },
      ),
      (EdgePosition.dr, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.down,
            index: 6,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.right,
            index: 8,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        },
      ),
      (EdgePosition.df, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.down,
            index: 2,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.front,
            index: 8,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
        },
      ),
      (EdgePosition.dl, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.down,
            index: 4,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.left,
            index: 8,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        },
      ),
      (EdgePosition.db, edgeFirstLevel): Edge(
        edgeFacelets: {
          0: Facelet(
            face: Face.down,
            index: 8,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.back,
            index: 8,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
        },
      ),
    };
  }
}
