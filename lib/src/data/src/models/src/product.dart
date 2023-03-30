class Product {
  final String name;
  final double price;
  final double? priceBefore;
  final String thumbNail;

  Product({
    required this.name,
    required this.price,
    this.priceBefore,
    required this.thumbNail,
  });
}
