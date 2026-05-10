import '../models/driver.dart';

class DispatchService {
  // Mock data - replace with Firebase queries
  final List<Driver> _availableDrivers = [
    Driver(
      id: "driver_001",
      name: "John Mbizi",
      car: "Toyota Camry (ZWE 1234)",
      available: true,
      rating: 4.8,
    ),
    Driver(
      id: "driver_002",
      name: "Faith Mutsvangwa",
      car: "Honda Civic (ZWE 5678)",
      available: true,
      rating: 4.9,
    ),
  ];

  Future<Driver?> findDriver() async {
    // MVP logic (upgrade later with Firebase)
    if (_availableDrivers.isNotEmpty) {
      return _availableDrivers.first;
    }
    return null;
  }

  Future<List<Driver>> getAvailableDrivers() async {
    return _availableDrivers.where((d) => d.available).toList();
  }
}
