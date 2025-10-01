import 'package:flutter/material.dart';
import 'package:ecomapp/const/colors.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = 25.0,
    this.backGroundColor = Colors.white,
    this.borderColor = Colors.blue,
  });
  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backGroundColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder? Border.all(color: borderColor):null
      ),
      child: child,
    );
  }
}
