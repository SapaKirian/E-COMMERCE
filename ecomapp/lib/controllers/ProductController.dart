import 'dart:convert';
import 'package:ecomapp/views/widgets/product.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ecomapp/models/products_model.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProductsFromApi();
  }

  void fetchProductsFromApi() async {
    try {
      final response =
          await http.get(Uri.parse('http://localhost:8000/api/products'));

      print("Status code: ${response.statusCode}");
      print("Response body: ${response.body}");

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(
            response.body)['data']; // atau sesuaikan kalau struktur beda
        // products.value =
        //     jsonResponse.map((item) => Product.fromJson(item)).toList();
      } else {
        Get.snackbar('Error', 'Gagal mengambil produk dari server');
      }
    } catch (e) {
      Get.snackbar('Error', 'Terjadi kesalahan: $e');
      print("Error: $e");
    }
  }
}
