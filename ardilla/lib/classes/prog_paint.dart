import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'app_color.dart';

double deg2rad(double deg) => deg * math.pi / 180;

class CircularPaint extends CustomPainter {
  final double borderThickness;
  final double progressValue;

  CircularPaint({
    this.borderThickness = 4.0,
    required this.progressValue,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);

    final rect =
    Rect.fromCenter(center: center, width: size.width, height: size.height);

    Paint paint = Paint()
      ..color = Colors.grey.withOpacity(.3)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderThickness;

    canvas.drawArc(
      rect,
      deg2rad(0),
      deg2rad(360),
      false,
      paint,
    );

    Paint progressBarPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderThickness
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          AppColor.colorApp,
          AppColor.colorApp,
          AppColor.colorApp,
          AppColor.colorApp,
        ],
      ).createShader(rect);
    canvas.drawArc(
      rect,
      deg2rad(-90),
      deg2rad(360 * progressValue),
      false,
      progressBarPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}