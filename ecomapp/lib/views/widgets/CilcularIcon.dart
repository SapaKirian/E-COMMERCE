import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/material.dart';

class TCilcularIcon extends StatelessWidget {
  const TCilcularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null ? backgroundColor! : HelperFunction.
          isDarkMode(context)
              ? TColors.dark.withOpacity(0.9)
              : TColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
