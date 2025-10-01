import 'package:ecomapp/const/SectionHeading.dart';
import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:ecomapp/views/setting/profile_menu.dart';
import 'package:ecomapp/views/widgets/CircularImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),


          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: assetsimage.userProfileimage1, width: 88, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),


              TProflieMenu(onPressed: (){}, title: 'Name', value: 'SMKN 1 Sumedang'),
              TProflieMenu(onPressed: (){}, title: 'Username', value: 'Nesas_com'),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              const TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),


              TProflieMenu(onPressed: (){}, title: 'User ID', value: '3211221', icon: CupertinoIcons.doc_on_doc,),
              TProflieMenu(onPressed: (){}, title: 'E-mail', value: 'nesas@email.com'),
              TProflieMenu(onPressed: (){}, title: 'Phone Number', value: '+62-8393-2323'),
              TProflieMenu(onPressed: (){}, title: 'Gender', value: '-'),
              TProflieMenu(onPressed: (){}, title: 'Date Of Birth', value: '4 june 2025'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){}, 
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              )
              
              
            ],
          ),),
      ),
    );
  }
}
