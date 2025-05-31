import 'package:flutter/material.dart';
import 'package:sparkleaf/login_screens/signin/signin_page.dart';
import 'package:sparkleaf/welcome_animations/welcome_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      // '/home': (context) => HomePage(),
      '/Welcome': (context) => WelcomeScreen(),
      '/signin': (context) => SignInPage(),
    };
  }
}
