import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/farmer_character.png'),
          SizedBox(height: 20),
          Text('FARM EASIER', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
    );
  }
}
