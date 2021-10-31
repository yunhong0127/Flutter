import 'package:flutter/material.dart';

class SeparatorPainter extends CustomPainter {
  final Color color;

  SeparatorPainter({@required this.color}) : assert(color != null);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    Path path = Path();

    path.moveTo(size.width * 0, size.height * 0.7);
    path.lineTo(size.width * 0, size.height * 0.89);
    path.lineTo(size.width * 0.1, size.height * 0.99);
    path.lineTo(size.width * 0.295, size.height * 0.99);
    path.lineTo(size.width * 0.335, size.height * 0.95);
    path.lineTo(size.width * 0.24, size.height * 0.95);
    path.lineTo(size.width * 0.21, size.height * 0.98);
    path.lineTo(size.width * 0.1, size.height * 0.98);
    path.lineTo(size.width * 0.05, size.height * 0.93);
    path.lineTo(size.width * 0.05, size.height * 0.75);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
