import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;

  const DetailPage({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(color: Colors.white),
                  Text("Sneaker Shop", style: TextStyle(color: Colors.white)),
                  Icon(Icons.shopping_cart_outlined, color: Colors.white),
                ],
              ),
            ),
            // Gambar dan nama sepatu
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Image.network(imageUrl, height: 180),
                    SizedBox(height: 16),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text("Men's Shoes"),
                    SizedBox(height: 10),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "The Max Air 270 Unit Delivers Unrivaled, All-Day Comfort. The Sleek, Running-Inspired Design Roots You To Everything Nike…",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Read More", style: TextStyle(color: Colors.blue)),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              child: Text("Add To Cart"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
