import 'package:flutter/material.dart';
import '../all_used/all_input_decoration.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordField({super.key, required this.controller});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: labelInputDecoration().copyWith(
          suffixIcon: Padding(
            padding: EdgeInsetsDirectional.only(end: 10.0),
            child: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: _toggleVisibility,
            ),
          ),
        ),
      ),
    );
  }
}
