import 'package:puzzle_cube/model/face/face.dart';

class CornerPosition {
  final Face firstFace;
  final Face secondFace;
  final Face thirdFace;

  const CornerPosition({
    required this.firstFace,
    required this.secondFace,
    required this.thirdFace,
  });

  static const CornerPosition urf = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.right,
    thirdFace: Face.front,
  );

  static const CornerPosition ufl = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.front,
    thirdFace: Face.left,
  );
  static const CornerPosition ulb = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.left,
    thirdFace: Face.back,
  );

  static const CornerPosition ubr = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.back,
    thirdFace: Face.right,
  );

  static const CornerPosition dfr = CornerPosition(
    firstFace: Face.down,
    secondFace: Face.front,
    thirdFace: Face.right,
  );
  static const CornerPosition dlf = CornerPosition(
    firstFace: Face.down,
    secondFace: Face.left,
    thirdFace: Face.front,
  );

  static const CornerPosition drb = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.right,
    thirdFace: Face.back,
  );

  static const CornerPosition dbl = CornerPosition(
    firstFace: Face.up,
    secondFace: Face.back,
    thirdFace: Face.left,
  );

  CornerPosition copyWith({
    Face? firstFace,
    Face? secondFace,
    Face? thirdFace,
  }) {
    return CornerPosition(
      firstFace: firstFace ?? this.firstFace,
      secondFace: secondFace ?? this.secondFace,
      thirdFace: thirdFace ?? this.thirdFace,
    );
  }

  @override
  String toString() =>
      'CornerPosition(firstFace: $firstFace, secondFace: $secondFace, thirdFace: $thirdFace)';

  @override
  bool operator ==(covariant CornerPosition other) {
    if (identical(this, other)) return true;

    return other.firstFace == firstFace &&
        other.secondFace == secondFace &&
        other.thirdFace == thirdFace;
  }

  @override
  int get hashCode =>
      firstFace.hashCode ^ secondFace.hashCode ^ thirdFace.hashCode;
}
