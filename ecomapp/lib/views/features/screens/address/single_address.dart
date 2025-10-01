import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,

    });

  final bool selectedAddress;
  

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backGroundColor: selectedAddress ? PrimaryColor.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkergrey : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? CupertinoIcons.circle_fill : null,
              color: selectedAddress 
              ? dark ? TColors.light 
              : TColors.dark : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nesas com',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: TSizes.sm / 2,
                ),
                const Text('(+62) 456 7890', maxLines: 1, overflow: TextOverflow.ellipsis),
                const SizedBox(height: TSizes.sm / 2),
                const Text(
                  'No 26 Cimalaka, kab Sumedang',
                  softWrap: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
