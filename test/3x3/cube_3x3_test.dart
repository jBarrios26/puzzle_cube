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

  group(
    'Front face moves',
    () {
      const cubeToStringAfterFMove = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |l9 l6 l3|
      |l1 l2 d1|f7 f4 f1|u7 r2 r3|b1 b2 b3|
      |l4 l5 d2|f8 f5 f2|u8 r5 r6|b4 b5 b6|
      |l7 l8 d3|f9 f6 f3|u9 r8 r9|b7 b8 b9|
               |r7 r4 r1|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';

      const cubeToStringAfterFPrimeMove = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |r1 r4 r7|
      |l1 l2 u9|f3 f6 f9|d3 r2 r3|b1 b2 b3|
      |l4 l5 u8|f2 f5 f8|d2 r5 r6|b4 b5 b6|
      |l7 l8 u7|f1 f4 f7|d1 r8 r9|b7 b8 b9|
               |l3 l6 l9|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';

      const cubeToStringAfterF2Move = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |d3 d2 d1|
      |l1 l2 r7|f9 f8 f7|l9 r2 r3|b1 b2 b3|
      |l4 l5 r4|f6 f5 f4|l6 r5 r6|b4 b5 b6|
      |l7 l8 r1|f3 f2 f1|l3 r8 r9|b7 b8 b9|
               |u9 u8 u7|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';

      test(
        'After an F move, toString shoud return cubeToStringAfterFMove',
        () {
          cube.f();
          expect(cube.toString(), cubeToStringAfterFMove);
        },
      );

      test(
        'After an F prime move, toString shoud return cubeToStringAfterFPrimeMove',
        () {
          cube.fAntiClockwise();
          expect(cube.toString(), cubeToStringAfterFPrimeMove);
        },
      );

      test(
        'After an F 2 move, toString shoud return cubeToStringAfterF2Move',
        () {
          cube.f2();
          expect(cube.toString(), cubeToStringAfterF2Move);
        },
      );
    },
  );

  group(
    'Right face moves',
    () {
      const cubeToStringAfterRMove = '''
               |u1 u2 f3|
               |u4 u5 f6|
               |u7 u8 f9|
      |l1 l2 l3|f1 f2 d3|r7 r4 r1|u9 b2 b3|
      |l4 l5 l6|f4 f5 d6|r8 r5 r2|u6 b5 b6|
      |l7 l8 l9|f7 f8 d9|r9 r6 r3|u3 b8 b9|
               |d1 d2 b7|
               |d4 d5 b4|
               |d7 d8 b1|
    ''';

      const cubeToStringAfterRPrimeMove = '''
               |u1 u2 b7|
               |u4 u5 b4|
               |u7 u8 b1|
      |l1 l2 l3|f1 f2 u3|r3 r6 r9|d9 b2 b3|
      |l4 l5 l6|f4 f5 u6|r2 r5 r8|d6 b5 b6|
      |l7 l8 l9|f7 f8 u9|r1 r4 r7|d3 b8 b9|
               |d1 d2 f3|
               |d4 d5 f6|
               |d7 d8 f9|
    ''';

      const cubeToStringAfterR2Move = '''
               |u1 u2 d3|
               |u4 u5 d6|
               |u7 u8 d9|
      |l1 l2 l3|f1 f2 b7|r9 r8 r7|f9 b2 b3|
      |l4 l5 l6|f4 f5 b4|r6 r5 r4|f6 b5 b6|
      |l7 l8 l9|f7 f8 b1|r3 r2 r1|f3 b8 b9|
               |d1 d2 u3|
               |d4 d5 u6|
               |d7 d8 u9|
    ''';

      test(
        'After an R move, toString shoud return cubeToStringAfterRMove',
        () {
          cube.r();
          expect(cube.toString(), cubeToStringAfterRMove);
        },
      );

      test(
        'After an R prime move, toString shoud return cubeToStringAfterRPrimeMove',
        () {
          cube.rAntiClockwise();
          expect(cube.toString(), cubeToStringAfterRPrimeMove);
        },
      );

      test(
        'After an R 2 move, toString shoud return cubeToStringAfterR2Move',
        () {
          cube.r2();
          expect(cube.toString(), cubeToStringAfterR2Move);
        },
      );
    },
  );
}
