import 'package:flutter/material.dart';
import '../models/ride.dart';
import '../widgets/ride_card.dart';

class RiderTab extends StatefulWidget {
  const RiderTab({super.key});

  @override
  State<RiderTab> createState() => _RiderTabState();
}

class _RiderTabState extends State<RiderTab> {
  late List<Ride> rides;

  @override
  void initState() {
    super.initState();
    rides = [
      Ride(route: "Harare CBD → Borrowdale", price: 2.0, seats: 3),
      Ride(route: "Avondale → Eastlea", price: 1.5, seats: 2),
      Ride(route: "Mbare → Highfield", price: 1.0, seats: 4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          "Available Rides",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        ...rides.map((ride) => RideCard(ride: ride)).toList(),
      ],
    );
  }
}