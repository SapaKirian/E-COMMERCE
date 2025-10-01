import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Produkcart extends StatelessWidget {
  const Produkcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Tambahkan ini untuk jaga-jaga
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0, // biar item isi penuh
            ),
            items: [
              'assets/images/AIR_JORDAN_1_LOW.jpeg',
              'assets/images/AIR_JORDAN_1_RETRO_LOW_OG.jpeg',
              'assets/images/ZM_SUPERFLY_10_ACADEMY_KM_TF.jpg',
            ].map((item) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
