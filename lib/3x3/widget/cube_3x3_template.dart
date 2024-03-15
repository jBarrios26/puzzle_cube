import 'package:flutter/material.dart';
import 'package:puzzle_cube/3x3/cube_3x3.dart';
import 'package:puzzle_cube/3x3/widget/face_template.dart';
import 'package:puzzle_cube/model/model.dart';

class Cube3x3Template extends StatelessWidget {
  const Cube3x3Template({
    super.key,
    required this.cube,
    this.height = 200,
    this.gutter = 5,
    this.radius = 16,
  });

  final Cube3x3 cube;
  final double height;
  final double gutter;
  final double radius;

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
                    radius: radius,
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
                    radius: radius,
                    facelets: cube.getFaceletByFace(Face.left),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: radius,
                    facelets: cube.getFaceletByFace(Face.front),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: radius,
                    facelets: cube.getFaceletByFace(Face.right),
                  ),
                ),
                SizedBox(
                  width: gutter,
                ),
                Expanded(
                  child: FaceTemplate(
                    radius: radius,
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
                    radius: radius,
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
