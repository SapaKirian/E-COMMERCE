import 'package:flutter/material.dart';


enum TextSize {
  small,
  medium,
  large,
}

class Brandtitletext extends StatelessWidget {
  const Brandtitletext({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.brandTextSize = TextSize.small, // ✅ default value cukup satu kali
    this.textAlign = TextAlign.center,
  });

    final Color? color;
    final String title;
    final int maxLines;
    final TextAlign? textAlign;
    // final TextSize brandTextSize;
    final TextSize brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: 
      brandTextSize == TextSize.small
      ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
      : brandTextSize == TextSize.medium? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
      : brandTextSize == TextSize.large? Theme.of(context).textTheme.titleLarge!.apply(color: color) 
      : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}