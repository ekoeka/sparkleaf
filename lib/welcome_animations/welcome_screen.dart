import 'package:flutter/material.dart';
import 'package:sparkleaf/all_used/all_background_part/all_background_parts.dart';
import 'package:sparkleaf/all_used/all_input_decoration.dart';
import 'package:sparkleaf/all_used/all_style_text.dart';
import 'package:sparkleaf/login_screens/signin/signin_page.dart';
import 'package:sparkleaf/login_screens/signup/signup_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SignBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text("  LET'S GET",
                                        style: SignFontManager.judul),
                                    Text('  STARTED!',
                                        style: SignFontManager.judul),
                                  ],
                                ),
                                Column(
                                  children: [],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Color(0xFF058135),
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Text('SIGN UP',
                                    style: SignFontManager.button
                                        .copyWith(color: Color(0xFF058135))),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xFF01D150),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      )),
                                ),
                                child: Text('SIGN IN',
                                    style: SignFontManager.button),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: -230,
                left: 10,
                right: 10,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: -230,
                child: Image.asset(
                  'assets/images/farmer_character.png',
                  width: 500,
                  height: 500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
