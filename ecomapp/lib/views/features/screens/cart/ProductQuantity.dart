import 'package:ecomapp/const/circular_icon.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductQuantity extends StatefulWidget {
  const ProductQuantity({super.key});

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  int quantity = 1; // default jumlah

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 1) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Tombol Minus
        GestureDetector(
          onTap: decrement,
          child: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                CupertinoIcons.minus,
                size: TSizes.iconMd,
                color: Colors.black,
              ),
            ),
          ),
        ),

        const SizedBox(width: TSizes.spaceBtwItems),

        // Text Jumlah
        Text('$quantity', style: Theme.of(context).textTheme.titleSmall),

        const SizedBox(width: TSizes.spaceBtwItems),

        // Tombol Plus
        GestureDetector(
          onTap: increment,
          child: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              color: PrimaryColor,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                CupertinoIcons.plus,
                size: TSizes.iconMd,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
