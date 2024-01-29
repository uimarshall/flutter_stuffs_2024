import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius =
        400, //No need to put required because we are passing default values
    this.padding = 0,
    this.margin,
    this.child,
    this.backgroundColor = TColors.white,
  });

  final double?
      width; //the value of the width will nullable , you can choose to provide width or not(null).
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child; // If you want to add any child widget.
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            radius), //we have to give the same value as the height and width of the container for the background image to be a circle or give a higher value than 400.
        color: backgroundColor,
        // image: DecorationImage(
        //   image: AssetImage('assets/images/food.jpg'),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: child,
    );
  }
}
