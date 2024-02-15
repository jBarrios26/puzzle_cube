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
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an F prime move, toString shoud return cubeToStringAfterFPrimeMove',
        () {
          cube.fAntiClockwise();
          expect(cube.toString(), cubeToStringAfterFPrimeMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an F 2 move, toString shoud return cubeToStringAfterF2Move',
        () {
          cube.f2();
          expect(cube.toString(), cubeToStringAfterF2Move);
          expect(cube.movesPerformed, 2);
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
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an R prime move, toString shoud return cubeToStringAfterRPrimeMove',
        () {
          cube.rAntiClockwise();
          expect(cube.toString(), cubeToStringAfterRPrimeMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an R 2 move, toString shoud return cubeToStringAfterR2Move',
        () {
          cube.r2();
          expect(cube.toString(), cubeToStringAfterR2Move);
          expect(cube.movesPerformed, 2);
        },
      );
    },
  );

  group(
    'Left face moves',
    () {
      const cubeToStringAfterLMove = '''
               |b9 u2 u3|
               |b6 u5 u6|
               |b3 u8 u9|
      |l7 l4 l1|u1 f2 f3|r1 r2 r3|b1 b2 d7|
      |l8 l5 l2|u4 f5 f6|r4 r5 r6|b4 b5 d4|
      |l9 l6 l3|u7 f8 f9|r7 r8 r9|b7 b8 d1|
               |f1 d2 d3|
               |f4 d5 d6|
               |f7 d8 d9|
    ''';

      const cubeToStringAfterLPrimeMove = '''
               |f1 u2 u3|
               |f4 u5 u6|
               |f7 u8 u9|
      |l3 l6 l9|d1 f2 f3|r1 r2 r3|b1 b2 u7|
      |l2 l5 l8|d4 f5 f6|r4 r5 r6|b4 b5 u4|
      |l1 l4 l7|d7 f8 f9|r7 r8 r9|b7 b8 u1|
               |b9 d2 d3|
               |b6 d5 d6|
               |b3 d8 d9|
    ''';

      const cubeToStringAfterL2Move = '''
               |d1 u2 u3|
               |d4 u5 u6|
               |d7 u8 u9|
      |l9 l8 l7|b9 f2 f3|r1 r2 r3|b1 b2 f7|
      |l6 l5 l4|b6 f5 f6|r4 r5 r6|b4 b5 f4|
      |l3 l2 l1|b3 f8 f9|r7 r8 r9|b7 b8 f1|
               |u1 d2 d3|
               |u4 d5 d6|
               |u7 d8 d9|
    ''';
      test(
        'After an L move, toString shoud return cubeToStringAfterLMove',
        () {
          cube.l();
          expect(cube.toString(), cubeToStringAfterLMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an L prime move, toString shoud return cubeToStringAfterLPrimeMove',
        () {
          cube.lAntiClockwise();
          expect(cube.toString(), cubeToStringAfterLPrimeMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an L 2 move, toString shoud return cubeToStringAfterL2Move',
        () {
          cube.l2();
          expect(cube.toString(), cubeToStringAfterL2Move);
          expect(cube.movesPerformed, 2);
        },
      );
    },
  );

  group(
    'Back face moves',
    () {
      const cubeToStringAfterBMove = '''
               |r3 r6 r9|
               |u4 u5 u6|
               |u7 u8 u9|
      |u3 l2 l3|f1 f2 f3|r1 r2 d9|b7 b4 b1|
      |u2 l5 l6|f4 f5 f6|r4 r5 d8|b8 b5 b2|
      |u1 l8 l9|f7 f8 f9|r7 r8 d7|b9 b6 b3|
               |d1 d2 d3|
               |d4 d5 d6|
               |l1 l4 l7|
    ''';
      const cubeToStringAfterBPrimeMove = '''
               |l7 l4 l1|
               |u4 u5 u6|
               |u7 u8 u9|
      |d7 l2 l3|f1 f2 f3|r1 r2 u1|b3 b6 b9|
      |d8 l5 l6|f4 f5 f6|r4 r5 u2|b2 b5 b8|
      |d9 l8 l9|f7 f8 f9|r7 r8 u3|b1 b4 b7|
               |d1 d2 d3|
               |d4 d5 d6|
               |r9 r6 r3|
    ''';

      const cubeToStringAfterB2Move = '''
               |d9 d8 d7|
               |u4 u5 u6|
               |u7 u8 u9|
      |r9 l2 l3|f1 f2 f3|r1 r2 l7|b9 b8 b7|
      |r6 l5 l6|f4 f5 f6|r4 r5 l4|b6 b5 b4|
      |r3 l8 l9|f7 f8 f9|r7 r8 l1|b3 b2 b1|
               |d1 d2 d3|
               |d4 d5 d6|
               |u3 u2 u1|
    ''';
      test(
        'After an B move, toString shoud return cubeToStringAfterBMove',
        () {
          cube.b();
          expect(cube.toString(), cubeToStringAfterBMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an B prime move, toString shoud return cubeToStringAfterBPrimeMove',
        () {
          cube.bAntiClockwise();
          expect(cube.toString(), cubeToStringAfterBPrimeMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an B 2 move, toString shoud return cubeToStringAfterB2Move',
        () {
          cube.b2();
          expect(cube.toString(), cubeToStringAfterB2Move);
          expect(cube.movesPerformed, 2);
        },
      );
    },
  );

  group(
    'Down face moves',
    () {
      const cubeToStringAfterDMove = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |u7 u8 u9|
      |l1 l2 l3|f1 f2 f3|r1 r2 r3|b1 b2 b3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |b7 b8 b9|l7 l8 l9|f7 f8 f9|r7 r8 r9|
               |d7 d4 d1|
               |d8 d5 d2|
               |d9 d6 d3|
    ''';
      const cubeToStringAfterDPrimeMove = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |u7 u8 u9|
      |l1 l2 l3|f1 f2 f3|r1 r2 r3|b1 b2 b3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |f7 f8 f9|r7 r8 r9|b7 b8 b9|l7 l8 l9|
               |d3 d6 d9|
               |d2 d5 d8|
               |d1 d4 d7|
    ''';

      const cubeToStringAfterD2Move = '''
               |u1 u2 u3|
               |u4 u5 u6|
               |u7 u8 u9|
      |l1 l2 l3|f1 f2 f3|r1 r2 r3|b1 b2 b3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |r7 r8 r9|b7 b8 b9|l7 l8 l9|f7 f8 f9|
               |d9 d8 d7|
               |d6 d5 d4|
               |d3 d2 d1|
    ''';
      test(
        'After an D move, toString shoud return cubeToStringAfterDMove',
        () {
          cube.d();
          expect(cube.toString(), cubeToStringAfterDMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an D prime move, toString shoud return cubeToStringAfterDPrimeMove',
        () {
          cube.dAntiClockwise();
          expect(cube.toString(), cubeToStringAfterDPrimeMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an D 2 move, toString shoud return cubeToStringAfterD2Move',
        () {
          cube.d2();
          expect(cube.toString(), cubeToStringAfterD2Move);
          expect(cube.movesPerformed, 2);
        },
      );
    },
  );

  group(
    'Up face moves',
    () {
      const cubeToStringAfterUMove = '''
               |u7 u4 u1|
               |u8 u5 u2|
               |u9 u6 u3|
      |f1 f2 f3|r1 r2 r3|b1 b2 b3|l1 l2 l3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |l7 l8 l9|f7 f8 f9|r7 r8 r9|b7 b8 b9|
               |d1 d2 d3|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';
      const cubeToStringAfterUPrimeMove = '''
               |u3 u6 u9|
               |u2 u5 u8|
               |u1 u4 u7|
      |b1 b2 b3|l1 l2 l3|f1 f2 f3|r1 r2 r3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |l7 l8 l9|f7 f8 f9|r7 r8 r9|b7 b8 b9|
               |d1 d2 d3|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';

      const cubeToStringAfterU2Move = '''
               |u9 u8 u7|
               |u6 u5 u4|
               |u3 u2 u1|
      |r1 r2 r3|b1 b2 b3|l1 l2 l3|f1 f2 f3|
      |l4 l5 l6|f4 f5 f6|r4 r5 r6|b4 b5 b6|
      |l7 l8 l9|f7 f8 f9|r7 r8 r9|b7 b8 b9|
               |d1 d2 d3|
               |d4 d5 d6|
               |d7 d8 d9|
    ''';
      test(
        'After an U move, toString shoud return cubeToStringAfterUMove',
        () {
          cube.u();
          expect(cube.toString(), cubeToStringAfterUMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an U prime move, toString shoud return cubeToStringAfterUPrimeMove',
        () {
          cube.uAntiClockwise();
          expect(cube.toString(), cubeToStringAfterUPrimeMove);
          expect(cube.movesPerformed, 1);
        },
      );

      test(
        'After an U 2 move, toString shoud return cubeToStringAfterU2Move',
        () {
          cube.u2();
          expect(cube.toString(), cubeToStringAfterU2Move);
          expect(cube.movesPerformed, 2);
        },
      );
    },
  );
}
