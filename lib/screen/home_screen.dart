import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 147, 228),
      ),

      body: Center(
        child: Text(
          "This is my Home Screen",
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