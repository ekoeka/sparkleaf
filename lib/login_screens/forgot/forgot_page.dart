import 'package:flutter/material.dart';
import 'package:sparkleaf/all_used/all_background_part/all_background_parts.dart';
import 'package:sparkleaf/all_used/all_style_text.dart';
import 'package:sparkleaf/login_screens/forgot/forget_verify_page.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

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
                    children: [
                      Text(
                          'FORGOT',
                          style: SignFontManager.judul
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'YOUR PASSWORD',
                          style: SignFontManager.judul2
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'To gain your account back, please\nchoose the authentication method\nbelow',
                          textAlign: TextAlign.center,
                          style: SignFontManager.textbox
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ForgetVerify(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              var begin = Offset(-1.0, 0.0);
                              var end = Offset.zero;
                              var curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
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
                          foregroundColor: Color(0xFF058135),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Mengatur sudut melengkung
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                                Icons.email,
                              color: Color(0xFF058135),
                              size: 100,
                            ),
                            Text(
                              'send via e-mail',
                              style: SignFontManager.button.copyWith(
                                color: Color(0xFF058135),
                              ),
                            ),
                            ]
                        )
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ForgetVerify(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                var begin = Offset(-1.0, 0.0);
                                var end = Offset.zero;
                                var curve = Curves.ease;

                                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
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
                          foregroundColor: Color(0xFF058135),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Mengatur sudut melengkung
                          ),
                        ),
                        child: Column(
                            children: [
                              Icon(
                                Icons.message,
                                color: Color(0xFF058135),
                                size: 100,
                              ),
                              Text(
                                'send via SMS',
                                style: SignFontManager.button.copyWith(
                                  color: Color(0xFF058135),
                                ),
                              ),
                            ]
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF058135),
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                            'BACK',
                            style:  SignFontManager.button
                        ),
                      ),
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