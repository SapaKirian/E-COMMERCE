import 'package:ecomapp/controllers/ProductController.dart';
import 'package:ecomapp/views/features/screens/cart/checkout/checkout.dart';
import 'package:ecomapp/views/features/screens/onboarding.dart';
import 'package:ecomapp/views/home_view.dart';
import 'package:ecomapp/views/login_view.dart';
import 'package:ecomapp/views/setting/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(ProductController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'E-commerce Aplication',
        theme: ThemeData(fontFamily: GoogleFonts.raleway().fontFamily),
        home: const OnboardingScreen());
  }
}
