import 'package:puzzle_cube/model/model.dart';

class Center3x3Factory {
  static Map<Face, List<Center>> buildClean3x3Center({
    required final Map<Face, CubeColor> colors,
  }) {
    return {
      Face.up: [
        Center(
          facelet: Facelet(
            face: Face.up,
            index: 5,
            color: colors[Face.up] ?? ClassicColors.white,
          ),
        ),
      ],
      Face.front: [
        Center(
          facelet: Facelet(
            face: Face.front,
            index: 5,
            color: colors[Face.front] ?? ClassicColors.green,
          ),
        ),
      ],
      Face.right: [
        Center(
          facelet: Facelet(
            face: Face.right,
            index: 5,
            color: colors[Face.right] ?? ClassicColors.red,
          ),
        ),
      ],
      Face.back: [
        Center(
          facelet: Facelet(
            face: Face.back,
            index: 5,
            color: colors[Face.back] ?? ClassicColors.blue,
          ),
        ),
      ],
      Face.left: [
        Center(
          facelet: Facelet(
            face: Face.left,
            index: 5,
            color: colors[Face.left] ?? ClassicColors.orange,
          ),
        ),
      ],
      Face.down: [
        Center(
          facelet: Facelet(
            face: Face.down,
            index: 5,
            color: colors[Face.down] ?? ClassicColors.yellow,
          ),
        ),
      ],
    };
  }
}
