// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductModel {
  late final String name;
  late final String category;
  ProductModel({
    required this.name,
    required this.category,
  });
}

final List<ProductModel> products = [
  ProductModel(name: "Smartphone", category: "Electronics"),
  ProductModel(name: "Laptop", category: "Electronics"),
  ProductModel(name: "Running Shoes", category: "Sports"),
  ProductModel(name: "T-shirt", category: "Clothing"),
  ProductModel(name: "Tablet", category: "Electronics"),
  ProductModel(name: "Sneakers", category: "Sports"),
  ProductModel(name: "Jeans", category: "Clothing"),
  ProductModel(name: "Headphones", category: "Electronics"),
  ProductModel(name: "Dumbbells", category: "Sports"),
  ProductModel(name: "Dress Shirt", category: "Clothing"),
];
