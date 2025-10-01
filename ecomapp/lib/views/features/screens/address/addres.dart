import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/features/screens/address/add_new_address.dart';
import 'package:ecomapp/views/features/screens/address/single_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UserAddresScreen extends StatelessWidget {
  const UserAddresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: PrimaryColor,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: Icon(CupertinoIcons.add, color: Colors.white),
        ),
        appBar: TAppbar(
          showBackArrow: true,
          title: Text("Addresses", style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TSingleAddress(selectedAddress: true),
                TSingleAddress(selectedAddress: false),
                TSingleAddress(selectedAddress: false),
                TSingleAddress(selectedAddress: false),
                
              ],
            ),
            ),
        ),
    );
  }
}