class Driver {
  final String id;
  final String name;
  final String car;
  final bool available;
  final double rating;

  Driver({
    required this.id,
    required this.name,
    required this.car,
    required this.available,
    this.rating = 5.0,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Driver &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          car == other.car &&
          available == other.available &&
          rating == other.rating;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      car.hashCode ^
      available.hashCode ^
      rating.hashCode;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'car': car,
        'available': available,
        'rating': rating,
      };

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        id: json['id'] as String,
        name: json['name'] as String,
        car: json['car'] as String,
        available: json['available'] as bool,
        rating: json['rating'] as double? ?? 5.0,
      );
}
