import 'package:flutter/material.dart';
import 'package:sparkleaf/login_screens/signin/signin_page.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      // '/home': (context) => HomePage(),
      // '/Welcome': (context) => Welcomescreen(),
      '/signin': (context) => SignInPage(),
    };
  }
}

