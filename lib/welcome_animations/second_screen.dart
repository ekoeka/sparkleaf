import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Image.asset('assets/images/farmer_character.png'), // Asumsikan Anda memiliki gambar karakter petani
      ),
    );
  }
}
