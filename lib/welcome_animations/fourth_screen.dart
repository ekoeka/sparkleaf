import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/farmer_character.png'),
          SizedBox(height: 20),
          Text('LET\'S GET STARTED!', style: TextStyle(fontSize: 24, color: Colors.white)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('SIGN UP'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('SIGN IN'),
          ),
        ],
      ),
    );
  }
}
