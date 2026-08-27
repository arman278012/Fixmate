class ServiceModel {
  final String id;
  final String name;
  final String description;
  final String category;
  final double startingPrice;
  final double rating;
  final int reviewCount;
  final String duration;
  final String icon;

  const ServiceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.startingPrice,
    required this.rating,
    required this.reviewCount,
    required this.duration,
    required this.icon,
  });
}
