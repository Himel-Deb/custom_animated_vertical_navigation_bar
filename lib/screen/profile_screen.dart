import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 147, 228),
      ),
       body: Center(
        child: Text(
          "This is my Profile Screen",
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