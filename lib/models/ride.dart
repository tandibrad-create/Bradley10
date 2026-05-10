class Ride {
  final String route;
  final double price;
  final int seats;

  Ride({
    required this.route,
    required this.price,
    required this.seats,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ride &&
          runtimeType == other.runtimeType &&
          route == other.route &&
          price == other.price &&
          seats == other.seats;

  @override
  int get hashCode => route.hashCode ^ price.hashCode ^ seats.hashCode;

  Map<String, dynamic> toJson() => {
        'route': route,
        'price': price,
        'seats': seats,
      };

  factory Ride.fromJson(Map<String, dynamic> json) => Ride(
        route: json['route'] as String,
        price: json['price'] as double,
        seats: json['seats'] as int,
      );
}
