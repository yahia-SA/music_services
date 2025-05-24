import 'package:flutter/material.dart';
import 'package:music_services/core/routes/routes.dart';
import 'package:music_services/models/service_model.dart';
import 'package:music_services/view/detail_screen.dart';
import 'package:music_services/view/home_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.details:
        final servicename = settings.arguments as ServiceModel;
        return _createRoute(DetailScreen(service: servicename));
      case Routes.home:
        return _createRoute(const HomeScreen());
      default:
        return null;
    }
  }
}

PageRouteBuilder _createRoute(Widget page) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
