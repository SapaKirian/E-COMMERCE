import 'package:ecomapp/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/views/features/authentications/controller/oncoarding/oboarding_controller.dart';

class oBoardingButtonNext extends StatelessWidget {
  const oBoardingButtonNext({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => OboardingController.instance.nextPage(),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        backgroundColor: Colors.white,
        foregroundColor: TColors.primaryBlue,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Next', style: TextStyle(fontWeight: FontWeight.bold)
          ),
          SizedBox(width: 8),
          Icon(CupertinoIcons.arrow_right),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
