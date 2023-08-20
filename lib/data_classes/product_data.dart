class ProductData {
  String name;
  String description;
  String image;
  double previousPrice;
  double newPrice;
  int stock;
  String type;
  String availability;

  ProductData({
    required this.name,
    required this.description,
    required this.image,
    required this.previousPrice,
    required this.newPrice,
    required this.stock,
    required this.type,
    required this.availability
  });
}