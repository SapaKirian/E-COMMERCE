import 'package:ecomapp/views/widgets/BrandTitleText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/const/sizes.dart';
class Brandtext extends StatelessWidget {
  const Brandtext({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = Colors.blue,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
    });
    final String title;
    final int maxLines;
    final Color? textColor,iconColor;
    final TextAlign? textAlign;
    final TextSize brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Brandtitletext(
            title: title,
            color:textColor,
            maxLines:maxLines,
            textAlign:textAlign,
            brandTextSize: brandTextSize,
            // style: TextStyle(fontSize: brandTextSize),
          ), 
          ),
          const SizedBox(width: TSizes.xs),
          Icon(Icons.verified, color: iconColor, size: TSizes.iconXs)
      ],
    );
  }
}