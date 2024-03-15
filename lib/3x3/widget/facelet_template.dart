import 'package:flutter/material.dart';
import 'package:puzzle_cube/model/model.dart';

class FaceletTemplate extends StatelessWidget {
  const FaceletTemplate({
    super.key,
    required this.facelet,
    required this.radius,
  });

  final Facelet facelet;
  final BorderRadius radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: facelet.color.color,
        borderRadius: radius,
        border: Border.all(
          color: Colors.black,
          width: 2.5,
        ),
      ),
    );
  }
}
