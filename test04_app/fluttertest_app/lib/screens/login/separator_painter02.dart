import 'package:flutter/material.dart';

class SeparatorPainter02 extends CustomPainter {
  final Color color;

  SeparatorPainter02({@required this.color}) : assert(color != null);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    Path path = Path();
    var roundnessFactor = 15.0;

    path.moveTo(size.width * 0, size.height * 0.65);
    path.lineTo(size.width * 0, size.height * -0.05);
    // path.quadraticBezierTo(size.width * 0.05 - roundnessFactor, size.height * -0.05 - roundnessFactor, size.width * 0.05, size.height * -0.1);
    path.lineTo(size.width * 0.05, size.height * -0.1);
    path.lineTo(size.width * 0.35, size.height * -0.1);
    path.lineTo(size.width * 0.4, size.height * -0.05);
    path.lineTo(size.width * 0.95, size.height * -0.05);
    // path.quadraticBezierTo(size.width * 1, size.height * -0.05, size.width * 1, size.height * 0);
    path.lineTo(size.width * 1, size.height * 0);
    // path.quadraticBezierTo(size.width * 1, size.height * 1.05, size.width * 1- roundnessFactor, size.height * 1.1- roundnessFactor);
    path.lineTo(size.width * 1, size.height * 1);
    // path.quadraticBezierTo(size.width * 0.05- roundnessFactor, size.height * 1.05, size.width * 0, size.height * 1.05- roundnessFactor);
    path.lineTo(size.width * 0.95, size.height * 1.05);
    path.lineTo(size.width * 0.05, size.height * 1.05);
    path.lineTo(size.width * 0, size.height * 1);
    path.lineTo(size.width * 0, size.height * 0.9);
    path.lineTo(size.width * 0.1, size.height * 1);
    path.lineTo(size.width * 0.3, size.height * 1);
    path.lineTo(size.width * 0.35, size.height * 0.95);
    path.lineTo(size.width * 0.5, size.height * 0.95);
    path.lineTo(size.width * 0.55, size.height * 1);
    path.lineTo(size.width * 0.725, size.height * 1);
    path.lineTo(size.width * 0.75, size.height * 0.975);
    path.lineTo(size.width * 0.825, size.height * 0.975);
    path.lineTo(size.width * 0.85, size.height * 1);
    path.lineTo(size.width * 0.95, size.height * 1);
    // path.quadraticBezierTo(size.width * 0.05- roundnessFactor, size.height * 1.05, size.width * 0, size.height * 1.05- roundnessFactor);
    path.lineTo(size.width * 0.99, size.height * 0.95);
    path.lineTo(size.width * 0.99, size.height * 0.65);
    path.lineTo(size.width * 0.94, size.height * 0.6);
    path.lineTo(size.width * 0.94, size.height * 0.3);
    path.lineTo(size.width * 0.99, size.height * 0.25);
    path.lineTo(size.width * 0.99, size.height * 0.1);
    path.lineTo(size.width * 0.95, size.height * 0.05);
    path.lineTo(size.width * 0.8, size.height * 0.05);
    path.lineTo(size.width * 0.75, size.height * 0);
    path.lineTo(size.width * 0.55, size.height * 0);
    path.lineTo(size.width * 0.5, size.height * 0.05);
    path.lineTo(size.width * 0.06, size.height * 0.05);
    // path.quadraticBezierTo(size.width * 0.07 - roundnessFactor, size.height * 0.05 - roundnessFactor, size.width * 0, size.height * 0.1);
    path.lineTo(size.width * 0.01, size.height * 0.1);
    path.lineTo(size.width * 0.01, size.height * 0.56);
    path.lineTo(size.width * 0.06, size.height * 0.61);
    path.lineTo(size.width * 0.06, size.height * 0.71);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
