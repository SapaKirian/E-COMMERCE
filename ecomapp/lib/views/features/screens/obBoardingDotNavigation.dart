import 'package:ecomapp/device_utility/device_utility.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecomapp/views/features/authentications/controller/oncoarding/oboarding_controller.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OboardingController.instance;
    final dark = HelperFunction.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight() + 25,
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: WormEffect(
            dotHeight: 6,
            activeDotColor: Colors.black,
            dotColor: Colors.white54,
          ),
        ),
      ),
    );
  }
}
