import 'package:flutter/material.dart';
import 'package:wowfasnew/pages/login/login_page.dart';
import 'package:wowfasnew/pages/splash/splash.dart';
import 'app_routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashRoute:
      return MaterialPageRoute(builder: (context) => Splash());

    case AppRoutes.loginRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen());

    default:
      return MaterialPageRoute(builder: (context) => Splash());
  }
}
