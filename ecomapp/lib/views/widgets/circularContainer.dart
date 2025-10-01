import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;

  const CircularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
