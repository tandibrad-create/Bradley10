import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class ZimRideGuruApp extends StatelessWidget {
  const ZimRideGuruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ZimRideGuru",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}