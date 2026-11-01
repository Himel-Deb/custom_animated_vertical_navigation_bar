import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashboardScreen"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 147, 228),
      ),

       body: Center(
        child: Text(
          "This is my Dashboard Screen",
          style: TextStyle(
            color: const Color.fromARGB(255, 8, 150, 172),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}