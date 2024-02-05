import 'package:flutter_test/flutter_test.dart';
import 'package:puzzle_cube/3x3/three_by_three.dart';

void main() {
  late Cube3x3 cube;
  setUp(() {
    cube = Cube3x3.solved();
  });

  test(
    'solved cube shoud return correct toString template',
    () {
      const cubeToString = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |u7 u8 u9|
      |l1 l2 l3|f1 f2 f3|r1 r2 r3|b1 b2 b3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |l7 l8 l9|f7 f8 f9|r7 r8 r9|b7 b8 b9|
               |d1 d2 d3|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';
      final result = cube.toString();
      expect(result, cubeToString);
    },
  );

  group(
    'Orientation',
    () {
      test('Cube is correctly oriented in solved state', () {
        final result = cube.passesOrientationTest();
        expect(result, true);
      });

      test('Cube is correctly oriented after u move', () {
        cube.u();
        final result = cube.passesOrientationTest();
        expect(result, true);
      });

      test('Cube is correctly oriented after d move', () {
        cube.d();
        final result = cube.passesOrientationTest();
        expect(result, true);
      });

      test('Cube is correctly oriented after r move', () {
        cube.r();
        final result = cube.passesOrientationTest();
        expect(result, true);
      });

      test('Cube is correctly oriented after l move', () {
        cube.l();
        final result = cube.passesOrientationTest();
        expect(result, true);
      });

      test('Cube is correctly oriented after f move', () {
        cube.f();
        final result = cube.passesOrientationTest();
        expect(result, true);
      });

      test('Cube is correctly oriented after b move', () {
        cube.b();
        final result = cube.passesOrientationTest();
        expect(result, true);
      });
    },
  );
}
