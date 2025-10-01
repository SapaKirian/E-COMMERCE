import 'package:ecomapp/const/SectionHeading.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAdress extends StatelessWidget {
  const TBillingAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Alamat', buttonTitle: 'Pilih', onPressed: (){}),
        const Text('Nesas Com', style:TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: TSizes.spaceBtwItems/2),

        const Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('+6283898216494', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],                  
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2),
        const Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey, size: 16),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('Sumedang Selatan, Kab Sumedang', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold), softWrap: true,),
          ],                  
        )
      ],
    );
  }
}