class ProductModel {
  final int id;
  final String title;
  final double price;
  final String category;
  final String description;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.title,
  });

  ProductModel.fromJson(dynamic json)
      : id = json['id'],
        title = json['title'],
        price = json['price'],
        category = json['category'],
        description = json['description'],
        imageUrl = json['image'];
}
