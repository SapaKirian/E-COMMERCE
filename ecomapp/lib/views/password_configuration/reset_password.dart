import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
              image: AssetImage(assetsimage.onBoardingImage3),
              width: HelperFunction.screenwidth() * 0.6),
            const SizedBox(height: TSizes.spaceBtwSection),

            Text('Change your password Succes', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('subTitle', style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwSection),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250, // Lebar
                  height: 35,
                  
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Warna latar belakang
                      foregroundColor: Colors.white, // Warna teks
                    ),
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text('SUBMIT'),
                  ),
                ),
                
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: 250,
              child: TextButton(onPressed: (){}, child: const Text('Resend email')),
            ),
            
            ],
          ),
        ),
      ),
    );
  }
}
