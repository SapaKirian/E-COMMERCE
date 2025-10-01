import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/device_utility/device_utility.dart';
import 'package:ecomapp/views/Product_review/progress_indicator_and_rating.dart';
import 'package:ecomapp/views/Product_review/rating_progress_indicator.dart';
import 'package:ecomapp/views/Product_review/user_review_card.dart';
import 'package:ecomapp/views/ratings/rating_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(title: Text('Review & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Ratings And reviews are verified and are from people who use the same type of device that you use."),
              SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              const TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5),
              Text("12.611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSection),

              /// User Rating List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}