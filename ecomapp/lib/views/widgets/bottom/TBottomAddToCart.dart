import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/widgets/CilcularIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tbottomaddtocart extends StatelessWidget {
  const Tbottomaddtocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkergrey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCilcularIcon(
                icon: CupertinoIcons.minus,
                backgroundColor: TColors.darkergrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBtwItems),
              const TCilcularIcon(
                icon: CupertinoIcons.add,
                backgroundColor: TColors.darkergrey,
                width: 40,
                height: 40,
                color: TColors.white,
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: TColors.primaryBlue,
              textStyle: const TextStyle(
                fontSize: 18, // Ukuran teks
                fontWeight: FontWeight.bold, // Ketebalan teks
                color: Colors
                    .white, // Warna teks (tidak selalu berfungsi, lihat catatan di bawah)
              ),
            ),
            child: Row(
              children: [
                const Icon(CupertinoIcons.cart_badge_plus),
                const SizedBox(width: 8),
                const Text('Add To Cart'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
