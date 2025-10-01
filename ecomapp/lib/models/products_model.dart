class Product_model {
  final int id;
  final String name;
  final String description;
  final int price;
  final int quantity;
  final int categoryId;
  final String image;

  Product_model({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.categoryId,
    required this.image,
  });

  factory Product_model.fromJson(Map<String, dynamic> json) {
    return Product_model(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      quantity: json['quantity'],
      categoryId: json['category_id'],
      image: json['image'],
    );
  }
}
