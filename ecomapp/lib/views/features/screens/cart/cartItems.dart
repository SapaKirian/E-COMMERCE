
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/widgets/Brandtext.dart';
import 'package:ecomapp/views/widgets/ProductTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
        imageUrl: assetsimage.productimage3,
        width: 60,
        height: 60,
        padding: EdgeInsets.all(TSizes.sm),
        backGroundColor: HelperFunction.isDarkMode(context) ? TColors.darkergrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
    
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              const Brandtext(title: 'Nike'),
              const Flexible(child: Producttitle(title: 'Black Sports shoes', maxLines: 1)),
              
              Text.rich(
                TextSpan(
                children: [
                  TextSpan( text: 'Warna', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Ungu', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: 'Ukuran', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Uk 40', style: Theme.of(context).textTheme.bodyLarge),
                  
                  
                ]
              )
              )
            ],
          ),
        )
      ],
    );
  }
}