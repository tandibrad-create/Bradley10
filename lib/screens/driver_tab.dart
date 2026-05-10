import 'package:flutter/material.dart';

class DriverTab extends StatefulWidget {
  const DriverTab({super.key});

  @override
  State<DriverTab> createState() => _DriverTabState();
}

class _DriverTabState extends State<DriverTab> {
  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.drive_eta,
            size: 80,
            color: isOnline ? Colors.green : Colors.blue,
          ),
          const SizedBox(height: 10),
          const Text(
            "Driver Mode",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () => setState(() => isOnline = !isOnline),
            icon: Icon(isOnline ? Icons.stop_circle : Icons.play_circle),
            label: Text(isOnline ? "Go Offline" : "Go Online"),
          ),
          const SizedBox(height: 10),
          Text(
            isOnline ? "You're online ✓" : "Go online to receive requests",
            style: TextStyle(
              color: isOnline ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}