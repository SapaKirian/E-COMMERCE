import 'package:ecomapp/const/SectionHeading.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TSectionHeading(title: 'Metode Pembayaran', buttonTitle: 'Pilih', onPressed: (){}),
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              RoundedContainer(
                width: 60,
                height: 35,
                padding: EdgeInsets.all(TSizes.sm),
                child: Image(image: AssetImage(assetsimage.dana), fit: BoxFit.contain),
          
              ),
              SizedBox(width: TSizes.spaceBtwItems / 2),
              Text('Dana', style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            ],
          ),
        )
      ],
    );
  }
}