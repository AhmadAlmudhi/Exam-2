class Item {
  final String name, image, description;
  final double rating, price;
  final int ratingsCount, timeToMake;
  int quanttity;

  Item({
    required this.name,
    required this.description,
    required this.rating,
    required this.ratingsCount,
    required this.image,
    required this.timeToMake,
    required this.price,
    required this.quanttity,
  });
}
