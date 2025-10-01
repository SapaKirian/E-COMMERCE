import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/features/screens/onBoardingPage.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/material.dart';

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: HelperFunction.screenwidth() * 0.8,
            height: HelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 32, // Contoh ukuran font
              fontWeight: FontWeight.bold, // Contoh ketebalan font
              color: Colors.white, // Warna yang diinginkan
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 18, // Contoh ukuran font
              fontWeight: FontWeight.bold, // Contoh ketebalan font
              color: Colors.white, // Warna yang diinginkan
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
