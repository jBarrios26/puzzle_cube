import 'package:flutter/material.dart';
import 'package:puzzle_cube/3x3/widget/facelet_template.dart';
import 'package:puzzle_cube/model/model.dart';

class FaceTemplate extends StatelessWidget {
  const FaceTemplate({
    super.key,
    required this.facelets,
    required this.radius,
  });

  final List<Facelet> facelets;
  final double radius;

  @override
  Widget build(BuildContext context) {
    int faceletId = 0;
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      physics: const NeverScrollableScrollPhysics(),
      children: facelets.map(
        (facelet) {
          return FaceletTemplate(
            facelet: facelet,
            radius: getRadius(
              facelet,
              faceletId++,
            ),
          );
        },
      ).toList(),
    );
  }

  BorderRadius getRadius(Facelet facelet, int faceletId) {
    if ([1, 3, 5, 7].contains(faceletId)) return BorderRadius.zero;

    if (faceletId == 0) {
      return BorderRadius.only(
        topLeft: Radius.circular(radius),
      );
    } else if (faceletId == 2) {
      return BorderRadius.only(
        topRight: Radius.circular(radius),
      );
    } else if (faceletId == 6) {
      return BorderRadius.only(
        bottomLeft: Radius.circular(radius),
      );
    } else if (faceletId == 8) {
      return BorderRadius.only(
        bottomRight: Radius.circular(radius),
      );
    }
    return BorderRadius.zero;
  }
}
