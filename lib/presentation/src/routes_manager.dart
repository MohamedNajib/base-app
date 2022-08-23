import 'package:election_app/presentation/loginScreen/login_screen.dart';
import 'package:election_app/presentation/settingsStcreen/settingsScreen.dart';
import 'package:flutter/material.dart';

import '../landingSection/landing_screen.dart';
import 'strings_manager.dart';

class Routes {
  static const String landingRoute = "/lading";
  static const String settingsScreen = "/settings";
  static const String loginRoute = "/";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.landingRoute:
        return MaterialPageRoute(builder: (_) => LandingScreen());
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
