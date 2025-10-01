import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/circular_icon.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/features/screens/cart/ProductQuantity.dart';
import 'package:ecomapp/views/features/screens/cart/TcartItems.dart';
import 'package:ecomapp/views/features/screens/cart/cartItems.dart';
import 'package:ecomapp/views/features/screens/cart/checkout/checkout.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/widgets/Brandtext.dart';
import 'package:ecomapp/views/widgets/ProductPrice.dart';
import 'package:ecomapp/views/widgets/ProductTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title:
            Text('Keranjang', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: TCartItems(),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60, // Sesuaikan tinggi sesuai kebutuhan
        padding: EdgeInsets.symmetric(
            vertical: 10), // Opsional, agar tombol lebih nyaman
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: PrimaryColor, // Ubah warna sesuai kebutuhan
          ),
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text('CheckOut \Rp10.000.000', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
