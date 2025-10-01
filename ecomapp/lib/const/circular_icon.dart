import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = 24.0,
    this.onPressed,
    this.color,
    this.backGroundColor,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backGroundColor != null
            ? backGroundColor!
            : HelperFunction.isDarkMode(context)
                ? Colors.black.withOpacity(0.9)
                : Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
