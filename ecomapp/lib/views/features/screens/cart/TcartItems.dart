import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/features/screens/cart/ProductQuantity.dart';
import 'package:ecomapp/views/features/screens/cart/cartItems.dart';
import 'package:ecomapp/views/widgets/ProductPrice.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSection,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          CartItems(),
          if(showAddRemoveButtons)
          const SizedBox(height: TSizes.spaceBtwItems),


          if(showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  ProductQuantity(),
                ],
              ),
              Productprice(price: '1.499.000')
            ],
          ),
        ],
      ),
    );
  }
}
