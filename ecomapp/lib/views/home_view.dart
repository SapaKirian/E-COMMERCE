import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/views/features/screens/cart/cart.dart';
import 'package:ecomapp/views/widgets/ProductCart.dart';
import 'package:ecomapp/views/widgets/category_widget.dart';
import 'package:ecomapp/views/widgets/filter_widget.dart';
import 'package:ecomapp/views/widgets/produkbaru.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map<String, dynamic>> categories = [
    {'name': 'Shoe', 'isSelected': true},
    {'name': 'Clothes', 'isSelected': false},
    {'name': 'Accessories', 'isSelected': false},
    {'name': 'Bags', 'isSelected': false},
    {'name': 'Watches', 'isSelected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset(
          'assets/images/Hamburger.png',
          scale: 1.5,
        ),
        title: Image.asset('assets/images/Explore.png', scale: 1.8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () => Get.to(() => const CartScreen()),
                icon: Icon(CupertinoIcons.cart),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterWidget(
                controller: TextEditingController(),
                hintText: 'Looking for shoes',
              ),
              const SizedBox(height: 25),
              const Text(
                'Pilih Kategori',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            // Reset semua jadi false
                            for (int i = 0; i < categories.length; i++) {
                              categories[i]['isSelected'] = false;
                            }
                            // Set yang diklik jadi true
                            categories[index]['isSelected'] = true;
                          });
                        },
                        child: CategoryWidget(
                          text: categories[index]['name'],
                          isSelected: categories[index]['isSelected'],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sepatu Populer",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: PrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Produkbaru();
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produk Baru",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1, // Ubah sesuai jumlah produk baru
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Produkcart(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
