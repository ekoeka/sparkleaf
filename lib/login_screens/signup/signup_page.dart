import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sparkleaf/all_used/all_background_part/all_background_parts.dart';
import 'package:sparkleaf/all_used/all_input_decoration.dart';
import 'package:sparkleaf/all_used/all_style_text.dart';
import 'package:sparkleaf/login_screens/signin/signin_page.dart';
import 'package:sparkleaf/login_screens/signup/signup_second_page.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SIGN UP', style: SignFontManager.judul),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('   NAME', style: SignFontManager.textbox),
                  TextField(
                    controller: nameController,
                    decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 10),
                  Text('   USERNAME', style: SignFontManager.textbox),
                  TextField(
                    controller: usernameController,
                    decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 10),
                  Text('   EMAIL', style: SignFontManager.textbox),
                  TextField(
                    controller: emailController,
                    decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                            (Route<dynamic> route) => route.isFirst,
                          );
                        },
                        child: Text(
                          "ALREADY HAVE AN ACCOUNT?",
                          style: SignFontManager.anotherbutton,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          SignUpData signUpData = SignUpData(
                            name: nameController.text,
                            username: usernameController.text,
                            email: emailController.text,
                            phoneNumber: ''
                          )

                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      SignUpSecondPage(
                                name: nameController.text,
                                username: usernameController,
                                email: emailController,
                              ),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                var begin = Offset(-1.0, 0.0);
                                var end = Offset.zero;
                                var curve = Curves.ease;

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF058135),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('NEXT', style: SignFontManager.button),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
