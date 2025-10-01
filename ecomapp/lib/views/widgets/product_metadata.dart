import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/widgets/BrandTitleText.dart';
import 'package:ecomapp/views/widgets/Brandtext.dart';
import 'package:ecomapp/views/widgets/ProductPrice.dart';
import 'package:ecomapp/views/widgets/ProductTitle.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/views/widgets/CircularImage.dart';


class ProductMetadata extends StatelessWidget {
  const ProductMetadata({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunction.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price & sale Price
        Row(
          children: [
            //Sale tag
            RoundedContainer (
              radius: 8.0,
              backGroundColor: Colors.grey.withOpacity(0.8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Text(
                      "-25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 12.0,),
                  //price
                  Text('1.499.000',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                  const SizedBox(width: 12.0,),
                  const Productprice(price: '1.499.000',),
          ],
        ),
        const SizedBox(height: 10.0 / 1.5,),
        //title
        const Producttitle(title:'Nike Mercurial Superfly 10 Academy'),
        const SizedBox(height: 10.0 / 1.5,),
        //stock status
        Row(
          children: [
            const Producttitle(title:'Status'),
            const SizedBox(height: 10.0,),
            Text(' In Stock',style: Theme.of(context).textTheme.titleSmall,),
          ],
        ),
        const SizedBox(height: 10.0 / 1.5,),
        
        // brand
        Row(
          children: [
            TCircularImage(
            image: assetsimage.shoeIcon,
            width: 22,
            height: 32,
            overlayColor: darkMode ? TColors.white : TColors.dark,
            ),
            const Brandtext(title: 'Nike' , brandTextSize: TextSize.medium, ),
          ],
        ),
      ],
    );
  }
}



