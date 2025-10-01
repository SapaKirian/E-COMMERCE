import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/rounded_container.dart';
import 'package:ecomapp/const/sizes.dart';
import 'package:flutter/material.dart';

class TKodePromo extends StatelessWidget {
  const TKodePromo({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      backGroundColor: dark ? TColors.dark : TColors.white,
      // Padding diatur untuk keseluruhan container
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md), // Hanya padding horizontal
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan secara vertikal
        children: [
          // TextFormField yang terpisah dari tombol
          Expanded( // Menggunakan Expanded agar TextFormField mengambil sisa ruang
            child: Padding(
              // Padding internal untuk TextFormField agar ada ruang dari border container
              padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
              child: TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  hintText: 'Masukan Kode Promo',
                  hintStyle: TextStyle(color: dark ? TColors.grey : TColors.darkergrey),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero, // Hapus padding default di dalam TextFormField
                ),
              ),
            ),
          ),

 
          SizedBox(
            width: 70, // Lebar fixed untuk tombol
            height: 40, // Tinggi fixed untuk tombol
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.primaryBlue,
                foregroundColor: TColors.white,
                padding: EdgeInsets.zero, // Padding diatur oleh SizedBox
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(TSizes.borderRadius),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Pakai',
                style: TextStyle(fontSize: TSizes.fontSizeSm),
              ),
            ),
          ),
        ],
      ),
    );
  }
}