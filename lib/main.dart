import 'package:flutter/material.dart';
import 'package:sparkleaf/services/auth_services.dart';
import 'package:sparkleaf/routes.dart';
import 'package:sparkleaf/login_screens/signin/signin_page.dart';
import 'package:sparkleaf/welcome_animations/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: Routes.getRoutes(),
        home: FutureBuilder<bool>(
          future: AuthService.getLoginStatus(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return snapshot.data == true ? WelcomeScreen() : WelcomeScreen();
            }
          },
        ));
  }
}
