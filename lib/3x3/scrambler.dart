import 'package:puzzle_cube/model/cube.dart';
import 'package:puzzle_cube/model/model.dart';

class ScrambleResult {
  final String scramble;
  final Cube result;

  ScrambleResult({
    required this.scramble,
    required this.result,
  });
}

class InvalidScrambleMoveError extends Error {}

abstract class Scrambler {
  ScrambleResult scrambleCube(final Cube cube);
}

class StringScrambler extends Scrambler {
  final String scramble;

  StringScrambler({
    required this.scramble,
  });

  @override
  ScrambleResult scrambleCube(final Cube cube) {
    final moveSet = scramble.toLowerCase().split(' ');

    for (final move in moveSet) {
      final cubeMove = Move3x3.fromString(move);
      if (cubeMove == Move3x3.invalid) {
        throw Error();
      }

      switch (cubeMove) {
        case Move3x3.u:
          cube.u();
          break;
        case Move3x3.uPrime:
          cube.uAntiClockwise();
          break;
        case Move3x3.u2:
          cube.u2();
          break;
        case Move3x3.f:
          cube.f();
          break;
        case Move3x3.fPrime:
          cube.fAntiClockwise();
          break;
        case Move3x3.f2:
          cube.f2();
          break;
        case Move3x3.r:
          cube.r();
          break;
        case Move3x3.rPrime:
          cube.rAntiClockwise();
          break;
        case Move3x3.r2:
          cube.rAntiClockwise();
          break;
        case Move3x3.l:
          cube.l();
          break;
        case Move3x3.lPrime:
          cube.lAntiClockwise();
          break;
        case Move3x3.l2:
          cube.l2();
          break;
        case Move3x3.d:
          cube.d();
          break;
        case Move3x3.dPrime:
          cube.dAntiClockwise();
          break;
        case Move3x3.d2:
          cube.d2();
          break;
        case Move3x3.b:
          cube.b();
          break;
        case Move3x3.bPrime:
          cube.bAntiClockwise();
        case Move3x3.b2:
          cube.b();
        case Move3x3.invalid:
          break;
      }
    }
    return ScrambleResult(
      scramble: scramble,
      result: cube,
    );
  }
}

enum Move3x3 {
  u,
  uPrime,
  u2,
  f,
  fPrime,
  f2,
  r,
  rPrime,
  r2,
  l,
  lPrime,
  l2,
  d,
  dPrime,
  d2,
  b,
  bPrime,
  b2,
  invalid;

  factory Move3x3.fromString(String move) {
    switch (move) {
      case 'u':
        return Move3x3.u;
      case "u'":
        return Move3x3.uPrime;
      case 'u2':
        return Move3x3.u2;
      case 'f':
        return Move3x3.f;
      case "f'":
        return Move3x3.fPrime;
      case 'f2':
        return Move3x3.f2;
      case 'r':
        return Move3x3.r;
      case "r'":
        return Move3x3.rPrime;
      case 'r2':
        return Move3x3.r2;
      case 'l':
        return Move3x3.l;
      case "l'":
        return Move3x3.lPrime;
      case 'l2':
        return Move3x3.l2;
      case 'd':
        return Move3x3.d;
      case "d'":
        return Move3x3.dPrime;
      case 'd2':
        return Move3x3.d2;
      case 'b':
        return Move3x3.b;
      case "b'":
        return Move3x3.bPrime;
      case 'b2':
        return Move3x3.b2;
    }
    return Move3x3.invalid;
  }
}

final valid3x3Move = [
  'u',
  "u'",
  'u2',
  'f',
  "f'",
  'f2',
  'r',
  "r'",
  'r2',
  'l',
  "l'",
  'l2',
  'd',
  "d'",
  'd2',
  'b',
  "b'",
  'b2',
];
