import 'dart:math';

import 'package:flutter/material.dart';

class StarClipper extends CustomClipper<Path> {
  final int points;

  StarClipper(this.points);

  double _degreeToRadian(double deg) => deg * (pi / 180.0);

  @override
  Path getClip(Size size) {
    Path path = Path();
    double halfWidth = size.width / 2;
    double outerRadius = halfWidth;
    double innerRadius = outerRadius / 2;

    double angle = _degreeToRadian(360 / points);
    for (int i = 0; i < points; i++) {
      double outerAngle = i * angle;
      double innerAngle = outerAngle + angle / 2;

      path.lineTo(halfWidth + outerRadius * cos(outerAngle),
          halfWidth + outerRadius * sin(outerAngle));
      path.lineTo(halfWidth + innerRadius * cos(innerAngle),
          halfWidth + innerRadius * sin(innerAngle));
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
