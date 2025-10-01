import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final Color? overlayColor;

  const TCircularImage({
    super.key,
    required this.image,
    this.width = 40,
    this.height = 20,
    this.overlayColor,
    this.padding = TSizes.sm,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.fit = BoxFit.cover,
  });

  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: overlayColor,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image', image));
  }
}
