import 'package:ecomapp/views/favorite/favorite.dart';
import 'package:ecomapp/views/features/screens/cart/cart.dart';
import 'package:ecomapp/views/home_view.dart';
import 'package:ecomapp/views/setting/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({
    super.key,
    required this.controller,
  });

  final NavigationController controller;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Colors.transparent,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(CupertinoIcons.house_alt), label: 'Home'),
            NavigationDestination(
              icon: Icon(CupertinoIcons.heart),
              label: 'Favorite',
            ),
            NavigationDestination(
                icon: Icon(CupertinoIcons.bag), label: 'Keranjang'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.bell), label: 'Notifikasi'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.person), label: 'Profil'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeView(),
    Container(color: Colors.red),
    const CartScreen(),
    Container(color: Colors.black),
    const SettingsScreen(),
  ];
}
