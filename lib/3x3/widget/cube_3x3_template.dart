import 'package:flutter/material.dart';
import 'package:puzzle_cube/3x3/cube_3x3.dart';
import 'package:puzzle_cube/model/model.dart';

class Cube3x3Template extends StatelessWidget {
  const Cube3x3Template({
    super.key,
    required this.cube,
    this.height = 200,
    this.gutter = 5,
  });

  final Cube3x3 cube;
  final double height;
  final double gutter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: 16,
                    facelets: cube.getFaceletByFace(Face.up),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: Container(),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FaceTemplate(
                    radius: 16,
                    facelets: cube.getFaceletByFace(Face.left),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: 16,
                    facelets: cube.getFaceletByFace(Face.front),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: 16,
                    facelets: cube.getFaceletByFace(Face.right),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: 16,
                    facelets: cube.getFaceletByFace(Face.back),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: 16,
                    facelets: cube.getFaceletByFace(Face.down),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: Container(),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
