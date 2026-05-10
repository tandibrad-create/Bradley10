import '../models/ride.dart';

abstract class IRideService {
  Future<void> createRide(String route);
  Future<List<Ride>> getAvailableRides();
}

class RideService implements IRideService {
  @override
  Future<void> createRide(String route) async {
    // TODO: Implement Firebase integration
    print("Ride created: $route");
  }

  @override
  Future<List<Ride>> getAvailableRides() async {
    // TODO: Fetch from Firebase
    return [];
  }
}
