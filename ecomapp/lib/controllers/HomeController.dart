import 'dart:convert';
import 'package:ecomapp/views/widgets/product.dart';
import 'package:get/get.dart';
import 'package:ecomapp/models/products_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var produkList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduk();
  }

  void fetchProduk() async {
    final response = await http.get(Uri.parse('http:localhost:8000'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      // produkList.value = data.map((e) => Product.fromJson(e)).toList();
    } else {
      Get.snackbar("Error", "Gagal ambil produk");
    }
  }
}
