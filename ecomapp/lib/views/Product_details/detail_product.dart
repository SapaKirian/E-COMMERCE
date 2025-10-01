import 'package:ecomapp/const/SectionHeading.dart';
import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/circular_icon.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_image.dart';
import 'package:ecomapp/views/Product_review/Product_review.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/widgets/Image_slider.dart';
import 'package:ecomapp/views/widgets/Rating_And_Share.dart';
import 'package:ecomapp/views/widgets/curved/curved_widget.dart';
import 'package:ecomapp/views/widgets/product_attributes.dart';
import 'package:ecomapp/views/widgets/product_metadata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:ecomapp/views/widgets/bottom/TBottomAddToCart.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Tbottomaddtocart(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedWidget(
              child: Container(
                color: TColors.grey,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace * 2),
                        child: Center(
                          child: Image(
                            image: AssetImage(assetsimage.productimage1),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: TSizes.defaultSpace,
                      right: TSizes.defaultSpace,
                      bottom: 25,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (_, index) => RoundedImage(
                            width: 80,
                            border: index == 0 ? Border.all(color: TColors.primary) : null,
                            padding: const EdgeInsets.all(TSizes.sm),
                            imageUrl: assetsimage.productimage1,
                            backgroundColor: dark ? TColors.dark : TColors.white,
                          ),
                          separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                          itemCount: 5,
                        ),
                      ),
                    ),

                    TAppbar(
                      title: Text('Sneaker Shop', style: Theme.of(context).textTheme.headlineSmall),
                      showBackArrow: true,
                      actions: [
                        CircularIcon(icon: Icons.shopping_bag_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike Air Max 270 Essential',
                        style: Theme.of(context).textTheme.headlineMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: TSizes.sm),
                      Text(
                        'Men\'s Shoes',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: TColors.darkGrey
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Row(
                    children: [
                      Text(
                        '\$179.39',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: dark ? TColors.white : TColors.dark,
                            ),
                      ),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSection),
                  const TSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'The Max Air 270 Unit Delivers Unrivaled, All-Day Comfort. The Sleek, Running-Inspired Design Roots You To Everything Nike.......',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: TColors.primary,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: TColors.primary,
                    ),
                  ),

                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwSection),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                        icon: const Icon(CupertinoIcons.arrow_right, size: 18),
                        onPressed: () => Get.to(() => const ProductReviewScreen()),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSection),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =====================================================================
// DEFINISI KELAS KONSTANTA DAN WIDGET KUSTOM (Untuk ditempel di file masing-masing)
// =====================================================================

// const/colors.dart
class TColors {
  static const Color primary = Color(0xFF007BFF);
  static const Color dark = Color(0xFF1B1B1B);
  static const Color white = Colors.white;
  static const Color darkergrey = Color(0xFF202020);
  static const Color grey = Color(0xFFF0F0F0);
  static const Color darkGrey = Color(0xFF6C757D);
  static const Color black = Colors.black;
}

// const/sizes.dart
class TSizes {
  static const double sm = 4.0;
  static const double md = 8.0;
  static const double lg = 12.0;
  static const double defaultSpace = 24.0;
  static const double spaceBtwItems = 16.0;
  static const double spaceBtwSection = 32.0;
  static const double productImageRadius = 16.0;
  static const double cardRadiusLg = 16.0;
}


// views/widgets/bottom/TBottomAddToCart.dart
class Tbottomaddtocart extends StatelessWidget {
  const Tbottomaddtocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkergrey : TColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg * 1.5),
          topRight: Radius.circular(TSizes.cardRadiusLg * 1.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: TColors.darkGrey,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: TColors.darkGrey),
            ),
            child: const CircularIcon(
              icon: Icons.favorite_border,
              color: TColors.white,
              // backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(width: TSizes.spaceBtwItems),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.primary,
                padding: const EdgeInsets.symmetric(vertical: TSizes.md),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.cardRadiusLg)),
              ),
              icon: const Icon(Icons.shopping_bag_outlined, color: TColors.white),
              label: const Text(
                'Add To Cart',
                style: TextStyle(color: TColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class CurvedWidget extends StatelessWidget {
  const CurvedWidget({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}

// Anda perlu membuat file clipper ini di tempat yang sesuai, contoh: lib/utils/custom_clipper/custom_curved_edges.dart
// Lalu import di curved_widget.dart
class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(size.width - 30, size.height - 20);
    final secondLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}



class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = Colors.white,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md, // Default borderRadius
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius; // Tambahkan properti borderRadius

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}