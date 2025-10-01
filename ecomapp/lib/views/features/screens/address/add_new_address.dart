import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen
 extends StatelessWidget {
  const AddNewAddressScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(showBackArrow: true, title: Text('Tambahkan Alamat Baru')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration:  InputDecoration(prefixIcon: Icon(CupertinoIcons.person_2), labelText: 'Nama')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration:  InputDecoration(prefixIcon: Icon(CupertinoIcons.phone), labelText: 'Nomor HP')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration:  const InputDecoration(prefixIcon: Icon(CupertinoIcons.building_2_fill), labelText: 'Jalan'))),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration:  const InputDecoration(prefixIcon: Icon(CupertinoIcons.command), labelText: 'Kode Pos'))),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration:  const InputDecoration(prefixIcon: Icon(CupertinoIcons.building_2_fill), labelText: 'Kota'))),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration:  const InputDecoration(prefixIcon: Icon(CupertinoIcons.refresh), labelText: 'Provinsi'))),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration:  InputDecoration(prefixIcon: Icon(CupertinoIcons.globe), labelText: 'Negara')),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: PrimaryColor), onPressed: (){}, child: Text('Simpan', style: TextStyle(color: Colors.white),)),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}