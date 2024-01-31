import 'package:puzzle_cube/model/face.dart';

class CornerPosition {
  final Face firstFace;
  final Face secondFace;
  final Face thirdFace;

  const CornerPosition({
    required this.firstFace,
    required this.secondFace,
    required this.thirdFace,
  });

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
