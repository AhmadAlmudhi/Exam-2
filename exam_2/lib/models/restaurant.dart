import 'item.dart';

class Restaurant {
  final String name, profileImage, headerImage, status, closesAt;
  final double rating, distance;
  final int ratingsCount;

  final List<Item> menu;

  Restaurant({
    required this.name,
    required this.distance,
    required this.rating,
    required this.ratingsCount,
    required this.profileImage,
    required this.headerImage,
    required this.status,
    required this.closesAt,
    required this.menu,
  });
}
