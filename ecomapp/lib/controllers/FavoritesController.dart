import 'package:ecomapp/views/widgets/product.dart';
import 'package:get/get.dart';
import 'package:ecomapp/models/products_model.dart';

class Favoritescontroller extends GetxController {
  static Favoritescontroller instance = Get.find();

  // Daftar produk favorit secara reactive
  final RxList<Product> favorites = <Product>[].obs;

  // Simpan ID produk favorit (opsional, kalau kamu pakai ID juga)
  RxList<int> favoriteProductIds = <int>[].obs;

  bool isFavorite(int productId) {
    return favoriteProductIds.contains(productId);
  }

  void toggleFavorite(int productId) {
    if (isFavorite(productId)) {
      favoriteProductIds.remove(productId);
    } else {
      favoriteProductIds.add(productId);
    }
  }

  void addFavorite(Product p) {
    if (!favorites.contains(p)) {
      favorites.add(p);
    }
  }

  void removeFavorite(Product p) {
    favorites.remove(p);
  }
}