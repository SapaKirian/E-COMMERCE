import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/const/text_string.dart';
import 'package:ecomapp/views/password_configuration/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.forgotpassword,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.subforgotpassword,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSection * 2),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'email',
                  prefixIcon: Icon(CupertinoIcons.arrow_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSection * 2),
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
            )
          ],
        ),
      ),
    );
  }
}
