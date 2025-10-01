import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/material.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(image: AssetImage(image), width: HelperFunction.screenwidth() * 0.6),
            const SizedBox(height: TSizes.spaceBtwSection),

            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwSection),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: onPressed, child: const Text('Continue')),
            )

          ],
        ),),
      ),
    );
  }
}
