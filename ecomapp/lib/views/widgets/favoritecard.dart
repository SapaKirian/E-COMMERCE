// import 'package:ecomapp/const/colors.dart';
// import 'package:ecomapp/const/rounded_container.dart';
// import 'package:ecomapp/controllers/FavoritesController.dart';
// import 'package:ecomapp/models/products_model.dart';
// import 'package:ecomapp/views/detail.dart';
// import 'package:ecomapp/views/Product_details/detail_product.dart';
// import 'package:ecomapp/views/widgets/product.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class FavoriteCard extends StatelessWidget {
//   final Product produk;    // JSON item
//   FavoriteCard({required this.produk, super.key});

//   final ctrl = Get.find<Favoritescontroller>();
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.push(
//           context, MaterialPageRoute(builder: (_) => const Detail())),
//       child: Container(
//         margin: const EdgeInsets.all(10),
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), blurRadius: 3, offset: const Offset(1,3))],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(16),
//                 child: Image.network(
//                   produk.image,
//                   height: 180,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const Positioned(top: 8, right: 8,
//                 child: Icon(CupertinoIcons.heart_fill, color: Colors.red)),
//               if (produk.discount != null)
//                 Positioned(
//                   top: 12,
//                   child: RoundedContainer(
//                     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//                     child: Text(
//                       '-${(produk.discount * 100).round()}%',
//                       style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
//                     ),
//                   ),
//                 ),
//             ]),
//             const SizedBox(height: 8),
//             Text('BEST SELLER',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: PrimaryColor)),
//             const SizedBox(height: 4),
//             Text(produk.name,
//                 maxLines: 2, overflow: TextOverflow.ellipsis,
//                 style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 6),
//             Row(children: [
//               const Icon(Icons.star, color: Colors.amber, size: 18),
//               const SizedBox(width: 4),
//               Text(produk.rating.toStringAsFixed(1)),
//               const Spacer(),
//               Container(
//                 padding: const EdgeInsets.all(6),
//                 decoration: BoxDecoration(shape: BoxShape.circle, color: PrimaryColor),
//                 child: const Icon(Icons.add, color: Colors.white),
//               )
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }
