import 'package:flutter/material.dart';
import 'package:sparkleaf/all_used/all_background_part/all_background_parts.dart';
import 'package:sparkleaf/all_used/all_input_decoration.dart';
import 'package:sparkleaf/all_used/all_style_text.dart';

class ForgetVerifySecondPage extends StatelessWidget {
  const ForgetVerifySecondPage({super.key});

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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('FORGOT', style: SignFontManager.judul),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('YOUR PASSWORD',
                                    style: SignFontManager.judul2),
                              ],
                            ),
                          ],
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
                          Text('   PASSWORD', style: SignFontManager.textbox),
                          TextField(
                            decoration: labelInputDecoration(),
                          ),
                          SizedBox(height: 20),
                          Text('   CONFIRM PASSWORD',
                              style: SignFontManager.textbox),
                          TextField(
                            decoration: labelInputDecoration(),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
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
                            child: Text('BACK', style: SignFontManager.button),
                          ),
                          SizedBox(width: 40),
                          ElevatedButton(
                            onPressed: () {
                              //handle sign-in here
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
                            child: Text('NEXT',
                                style: SignFontManager.button
                                    .copyWith(color: Color(0xFF058135))),
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
