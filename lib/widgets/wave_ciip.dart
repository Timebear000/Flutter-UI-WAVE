import 'package:flutter/material.dart';

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.65);

    final firstPointContainer = Offset(size.width * 0.01, size.height * 0.75);
    final firstEndPoint = Offset(size.width * 0.28, size.height * 0.8);

    path.quadraticBezierTo(firstPointContainer.dx, firstPointContainer.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width * 0.7, size.height * 0.85);
    final secondPointContainer = Offset(size.width * 0.99, size.height * 0.9);
    final secondEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondPointContainer.dx, secondPointContainer.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
