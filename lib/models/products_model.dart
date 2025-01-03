import 'dart:convert';

class ProductsModel {
  final String product_id;
  final String name;
  final String description;
  final int price;
  final int stock;
  final String category_id;
  final String image1;

  ProductsModel({
    required this.product_id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category_id,
    required this.image1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product_id': product_id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'category_id': category_id,
      'image1': image1,
    };
  }

  factory ProductsModel.fromMap(Map<String, dynamic> map) {
    return ProductsModel(
      product_id: map['product_id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      stock: map['stock'] as int,
      category_id: map['category_id'] as String,
      image1: map['image1'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductsModel.fromJson(String source) =>
      ProductsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductsModel(product_id: $product_id, name: $name, description: $description, price: $price, stock: $stock, category_id: $category_id, image1: $image1)';
  }
}
