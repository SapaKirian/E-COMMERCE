import 'package:ecomapp/const/SectionHeading.dart';
import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/features/screens/address/addres.dart';
import 'package:ecomapp/views/features/screens/cart/cart.dart';
import 'package:ecomapp/views/setting/Profile_screen.dart';
import 'package:ecomapp/views/setting/UserProfiletile.dart';
import 'package:ecomapp/views/setting/settins_menutile.dart';
import 'package:ecomapp/views/widgets/CircularImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/views/TPrimaryHeaderContainer.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
            Tprimaryheadercontainer(
              child: Column(
                children: [
                  TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height:  TSizes.spaceBtwSection,)
                ],
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenutile(
                    icon: CupertinoIcons.home,
                    title: 'My Addres',
                    subtitle: 'Set Shopping delivery addres',
                    onTap: () => Get.to(() => const UserAddresScreen()),
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove Products and move to Checkout',
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.bag,
                    title: 'My orders',
                    subtitle: 'In-Progress and Completed Orders',
                    onTap: (){},
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.money_dollar,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank accoun',
                    onTap: (){},
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.percent,
                    title: 'My Voucher',
                    subtitle: 'List of all the discounted voucher',
                    onTap: (){},
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.bell,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notifiations message',
                    onTap: (){},
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.lock,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: (){},
                  ),

                  SizedBox(height: TSizes.spaceBtwSection),
                  TSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenutile(
                    icon: CupertinoIcons.cloud,
                    title: 'Load Data',
                    subtitle: 'Upload data to your Cloud Firebase',
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (Value){}),
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.shield,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (Value){}),
                  ),
                  TSettingsMenutile(
                    icon: CupertinoIcons.photo,
                    title: 'HD image Quality',
                    subtitle: 'Set Image quality to be',
                    trailing: Switch(value: false, onChanged: (Value){}),
                  ),
                ],
              ),
            )
            ],
          ),
        ),
    );
  }
}