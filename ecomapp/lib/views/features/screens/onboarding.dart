import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/const/text_string.dart';
import 'package:ecomapp/device_utility/device_utility.dart';
import 'package:ecomapp/views/features/screens/obBoardingDotNavigation.dart';
import 'package:ecomapp/views/features/screens/onBoardingButtonNext.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/views/features/screens/onBoardingPage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecomapp/views/features/authentications/controller/oncoarding/oboarding_controller.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // ✅ Background warna solid
          Positioned.fill(
            child: Container(
              color: TColors.primaryBlue,
            ),
          ),

          // ✅ Halaman scroll horizontal
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              Onboardingpage(
                image: assetsimage.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              Onboardingpage(
                image: assetsimage.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              Onboardingpage(
                image: assetsimage.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // ✅ Dot navigation + tombol di bawah
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: DeviceUtility.getBottomNavigationBarHeight() + 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Dot indicator
                  OnBoardingDotNavigation(),

                  const SizedBox(height: 16), // Jarak antara dot dan tombol

                  // Tombol next
                  oBoardingButtonNext(controller: _controller),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
