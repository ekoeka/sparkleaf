import 'package:flutter/material.dart';
import 'package:sparkleaf/all_used/all_background_part/Background_part.dart';
import 'package:sparkleaf/all_used/all_background_part/background_colors.dart';

class SignBackground extends StatelessWidget {
  const SignBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SignBackgroundColor(),
        SignBackgroundCircle(),
      ],
    );
  }
}
