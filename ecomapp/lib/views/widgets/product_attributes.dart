import 'package:ecomapp/const/SectionHeading.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/widgets/ProductPrice.dart';
import 'package:ecomapp/views/widgets/ProductTitle.dart';
import 'package:ecomapp/views/widgets/chips/choice_chip.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/views/function/Helper_function.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(

          padding: const EdgeInsets.all(TSizes.ms),
          backGroundColor: dark ? TColors.darkergrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  TSectionHeading(title: 'variasi', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      
                  Row(
                    children: [
                      const Producttitle(title: 'price :', smallSize: true),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Text(
                        '1.899.000',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      const Productprice(price: '1.499.000'),
                  ],),

                  Row(
                    children: [
                      const Producttitle(title: 'Stock : ', smallSize: true),
                      Text('In Stock', style: Theme.of(context).textTheme.titleMedium),

                    ],
                  )
                    ],
                  ),
                ],
              ),
              Producttitle(
                title: 'Produk terbaru dari nike dengan tampilan yang lebih menarik Produk terbaru dari nike dengan tampilan yang lebih menarik Produk terbaru dari nike dengan tampilan yang lebih menarik ',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),


          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                choicechip(text: 'Green', selected: true, onSelected: (value){}),
                choicechip(text: 'Blue', selected: false, onSelected: (value){}),
                choicechip(text: 'Red', selected: false, onSelected: (value){}),
                choicechip(text: 'Blue', selected: false, onSelected: (value){}),
                choicechip(text: 'Red', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size'),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                choicechip(text: 'EU 39', selected: true, onSelected: (value){}),
                choicechip(text: 'EU 40', selected: false, onSelected: (value){}),
                choicechip(text: 'EU 41', selected: false, onSelected: (value){}),
                choicechip(text: 'EU 42', selected: false, onSelected: (value){}),
                choicechip(text: 'EU 43', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


