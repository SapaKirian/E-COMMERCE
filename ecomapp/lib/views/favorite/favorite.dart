// import 'package:ecomapp/const/appBar.dart';
// import 'package:ecomapp/controllers/FavoritesController.dart';
// import 'package:ecomapp/const/circular_icon.dart';
// import 'package:ecomapp/const/sizes.dart';
// import 'package:ecomapp/views/home_view.dart';
// import 'package:ecomapp/views/widgets/favoritecard.dart';
// import 'package:ecomapp/views/widgets/navigation_menu.dart';
// import 'package:ecomapp/views/widgets/produkbaru.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Favorite extends StatelessWidget {
//   Favorite({super.key});
//   final ctrl = Get.put(Favoritescontroller());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: TAppbar(title: Text('Favorite', style: Theme.of(context).textTheme.headlineMedium)),
//       body: Obx(() {
//         final list = ctrl.favorites;
//         if (list.isEmpty) return const Center(child: CircularProgressIndicator());
//         return GridView.builder(
//           padding: const EdgeInsets.all(TSizes.defaultSpace),
//           physics: const BouncingScrollPhysics(),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: .65),
//           itemCount: list.length,
//           itemBuilder: (_, i) => FavoriteCard(produk: list[i]),
//         );
//       }),
//     );
//   }
// }