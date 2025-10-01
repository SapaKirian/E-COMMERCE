import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/features/screens/cart/TcartItems.dart';
import 'package:ecomapp/views/features/screens/cart/cartItems.dart';
import 'package:ecomapp/views/features/screens/cart/checkout/billing_adress.dart';
import 'package:ecomapp/views/features/screens/cart/checkout/billing_amount.dart';
import 'package:ecomapp/views/features/screens/cart/checkout/billing_payment.dart';
import 'package:ecomapp/views/features/screens/cart/checkout/kode_promo.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/succes_screen/succes_screen.dart';
import 'package:ecomapp/views/widgets/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title:
            Text('Keranjang', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSection),

              TKodePromo(dark: dark),

              const SizedBox(height: TSizes.spaceBtwSection),

              const RoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [

                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),


                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    TBillingPaymentSection(),
                   

                    TBillingAdress(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: ElevatedButton(
        onPressed: () => Get.to(() => SuccesScreen(
          image: assetsimage.successPayment,
          title: 'Pembayaran Berhasil',
          subTitle: 'Pesanan Anda Akan segera dikirim',
          onPressed: () => Get.offAll(() => Navigationbar(controller: Get.put(NavigationController()))),
        )), 
        child: const Text('Checkout \Rp.2.000.000'),
        
        ),
        ),
        
    );
  }
}