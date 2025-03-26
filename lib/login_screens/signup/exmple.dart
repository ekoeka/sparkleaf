import 'package:flutter/material.dart';

class SignUnPage extends StatelessWidget {
  const SignUnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background Color
          Container(
            color: Colors.green,
          ),
          //lingkaran dipojok kiri atas
          Positioned(
            top: -80,
            left: -80,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.greenAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}