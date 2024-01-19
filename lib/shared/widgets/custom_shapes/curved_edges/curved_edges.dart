import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // size is the size of the container or child widget of the ClipPath
    var path = Path();
    path.lineTo(0, size.height); // start with this point in the container
    final firstCurve = Offset(0, size.height - 20);
    final firstCurveEndPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, firstCurveEndPoint.dx,
        firstCurveEndPoint.dy);

    // Second curve
    final secondFirstCurve = Offset(0, size.height - 20);
    final secondFirstCurveEndPoint = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondFirstCurveEndPoint.dx, secondFirstCurveEndPoint.dy);
    // Third curve
    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdFirstCurveEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdFirstCurveEndPoint.dx, thirdFirstCurveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
    // path.quadraticBezierTo(size.width/2, size.height/2, size.width, size.height);
    // path.lineTo(size.width, 0);
    // path.close();
    // path.lineTo(0, size.height - 40);

    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
