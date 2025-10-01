import 'package:flutter/material.dart';

class Producttitle extends StatelessWidget {
  const Producttitle({
    Key? key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
    this.brandTextSize = 14.0,
  }) : super(key: key);

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;
  final double brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: brandTextSize)
          : Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: brandTextSize),
    );
  }
}
