import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/ratings/rating_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(assetsimage.userProfileimage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Agnialbaits',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        //review
        Row(children: [
          const TRatingBarIndicator(rating: 4),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text("01 Nov , 2024", style: Theme.of(context).textTheme.bodyMedium),
        ]),
        const SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite invitive. i was able to navigate and make purchases seamblessly. Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more ',
          moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        RoundedContainer(
          backGroundColor: dark ? TColors.darkergrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Text("T' s Store",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text("02 Nov, 2023",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: ReadMoreText(
                    'The user interface of the app is quite invitive. i was able to navigate and make purchases seamblessly. Great job!',
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' show less',
                    trimCollapsedText: ' show more ',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems)
      ],
    );
  }
}
