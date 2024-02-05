import 'package:puzzle_cube/model/model.dart';

class Corner3x3Factory {
  static Map<CornerPosition, Corner> buildClean3x3CornerCubies({
    required final Map<Face, CubeColor> colors,
  }) {
    return {
      CornerPosition.urf: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.up,
            index: 9,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.right,
            index: 1,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
          2: Facelet(
            face: Face.front,
            index: 3,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
        },
      ),
      CornerPosition.ufl: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.up,
            index: 7,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.front,
            index: 1,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
          2: Facelet(
            face: Face.left,
            index: 3,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        },
      ),
      CornerPosition.ulb: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.up,
            index: 1,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.left,
            index: 1,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
          2: Facelet(
            face: Face.back,
            index: 3,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
        },
      ),
      CornerPosition.ubr: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.up,
            index: 3,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
          1: Facelet(
            face: Face.back,
            index: 1,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
          2: Facelet(
            face: Face.right,
            index: 3,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        },
      ),
      CornerPosition.dlf: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.down,
            index: 1,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.left,
            index: 9,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
          2: Facelet(
            face: Face.front,
            index: 7,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
        },
      ),
      CornerPosition.dfr: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.down,
            index: 3,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.front,
            index: 9,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
          2: Facelet(
            face: Face.right,
            index: 7,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        },
      ),
      CornerPosition.dbl: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.down,
            index: 7,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.back,
            index: 9,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
          2: Facelet(
            face: Face.left,
            index: 7,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        },
      ),
      CornerPosition.drb: Corner(
        cornerFacelets: {
          0: Facelet(
            face: Face.down,
            index: 9,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
          1: Facelet(
            face: Face.right,
            index: 9,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
          2: Facelet(
            face: Face.back,
            index: 7,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
        },
      ),
    };
  }
}
