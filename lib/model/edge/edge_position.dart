import 'package:puzzle_cube/model/face/face.dart';

class EdgePosition {
  final Face firstFace;
  final Face secondFace;

  const EdgePosition({
    required this.firstFace,
    required this.secondFace,
  });

  EdgePosition copyWith({
    Face? firstFace,
    Face? secondFace,
  }) {
    return EdgePosition(
      firstFace: firstFace ?? this.firstFace,
      secondFace: secondFace ?? this.secondFace,
    );
  }

  static const EdgePosition uf = EdgePosition(
    firstFace: Face.up,
    secondFace: Face.front,
  );

  static const EdgePosition ur = EdgePosition(
    firstFace: Face.up,
    secondFace: Face.right,
  );

  static const EdgePosition ub = EdgePosition(
    firstFace: Face.up,
    secondFace: Face.back,
  );

  static const EdgePosition ul = EdgePosition(
    firstFace: Face.up,
    secondFace: Face.left,
  );

  static const EdgePosition fr = EdgePosition(
    firstFace: Face.front,
    secondFace: Face.right,
  );

  static const EdgePosition fl = EdgePosition(
    firstFace: Face.front,
    secondFace: Face.left,
  );

  static const EdgePosition br = EdgePosition(
    firstFace: Face.back,
    secondFace: Face.right,
  );

  static const EdgePosition bl = EdgePosition(
    firstFace: Face.back,
    secondFace: Face.left,
  );

  static const EdgePosition df = EdgePosition(
    firstFace: Face.down,
    secondFace: Face.front,
  );

  static const EdgePosition dr = EdgePosition(
    firstFace: Face.down,
    secondFace: Face.right,
  );

  static const EdgePosition db = EdgePosition(
    firstFace: Face.down,
    secondFace: Face.back,
  );

  static const EdgePosition dl = EdgePosition(
    firstFace: Face.down,
    secondFace: Face.left,
  );

  @override
  String toString() =>
      'EdgePosition(firstFace: $firstFace, secondFace: $secondFace)';

  @override
  bool operator ==(covariant EdgePosition other) {
    if (identical(this, other)) return true;

    return other.firstFace == firstFace && other.secondFace == secondFace;
  }

  @override
  int get hashCode => firstFace.hashCode ^ secondFace.hashCode;
}
