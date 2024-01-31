import 'package:flutter_test/flutter_test.dart';
import 'package:puzzle_cube/model/center.dart';
import 'package:puzzle_cube/model/corner.dart';
import 'package:puzzle_cube/model/cube.dart';
import 'package:puzzle_cube/model/cube_color.dart';
import 'package:puzzle_cube/model/edge.dart';
import 'package:puzzle_cube/model/face.dart';
import 'package:puzzle_cube/model/facelet.dart';

void main() {
  late Cube cube;
  setUp(
    () => {
      cube = Cube(
        centers: Centers(centers: {}),
        corners: Corners(
          corners: {
            CubeCornerPosition.urf: Corner(
              cornerFacelets: {
                0: Facelet(
                  face: Face.up,
                  color: ClassicColors.white,
                  index: 9,
                ),
                1: Facelet(
                  face: Face.right,
                  color: ClassicColors.red,
                  index: 1,
                ),
                2: Facelet(
                  face: Face.front,
                  color: ClassicColors.green,
                  index: 3,
                ),
              },
            ),
            CubeCornerPosition.dfr: Corner(
              cornerFacelets: {
                0: Facelet(
                  face: Face.down,
                  color: ClassicColors.yellow,
                  index: 3,
                ),
                1: Facelet(
                  face: Face.front,
                  color: ClassicColors.green,
                  index: 9,
                ),
                2: Facelet(
                  face: Face.right,
                  color: ClassicColors.red,
                  index: 7,
                ),
              },
            ),
            CubeCornerPosition.dlf: Corner(
              cornerFacelets: {
                0: Facelet(
                  face: Face.down,
                  color: ClassicColors.yellow,
                  index: 1,
                ),
                1: Facelet(
                  face: Face.left,
                  color: ClassicColors.orange,
                  index: 9,
                ),
                2: Facelet(
                  face: Face.front,
                  color: ClassicColors.green,
                  index: 7,
                ),
              },
            ),
            CubeCornerPosition.ufl: Corner(
              cornerFacelets: {
                0: Facelet(
                  face: Face.up,
                  color: ClassicColors.white,
                  index: 7,
                ),
                1: Facelet(
                  face: Face.front,
                  color: ClassicColors.green,
                  index: 1,
                ),
                2: Facelet(
                  face: Face.left,
                  color: ClassicColors.orange,
                  index: 3,
                ),
              },
            ),
          },
        ),
        edge: Edges(
          edges: {},
        ),
      ),
    },
  );

  test('test name', () {
    print(cube.toString());

    expect(true, true);
  });
}
