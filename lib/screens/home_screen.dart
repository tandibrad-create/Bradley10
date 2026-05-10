import 'package:flutter/material.dart';
import 'rider_tab.dart';
import 'driver_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final pages = const [
    RiderTab(),
    DriverTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ZimRideGuru • Harare"),
        centerTitle: true,
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Rider",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_eta),
            label: "Driver",
          ),
        ],
      ),
    );
  }
}