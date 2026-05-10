import 'package:flutter/material.dart';
import '../models/ride.dart';

class RideCard extends StatelessWidget {
  final Ride ride;

  const RideCard({
    super.key,
    required this.ride,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.local_taxi, color: Colors.blue),
        title: Text(ride.route),
        subtitle: Text("Seats: ${ride.seats}"),
        trailing: Text(
          "\$${ride.price.toStringAsFixed(2)}",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Booked: ${ride.route}")),
          );
        },
      ),
    );
  }
}