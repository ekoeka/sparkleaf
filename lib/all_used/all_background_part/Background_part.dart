import 'package:flutter/material.dart';

class SignBackgroundCircle extends StatelessWidget {
  const SignBackgroundCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -80,
      left: -80,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF058135),
        ),
      ),
    );
  }
}

class FarmerBackgroundCircle extends StatelessWidget {
  const FarmerBackgroundCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -80,
      left: -80,
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
