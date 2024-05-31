import 'package:flutter/material.dart';
import 'package:learning_studio/app/view/view.dart';

class NavigationHelper {
  // Consider using a state management solution (Provider, Bloc) for complex scenarios

  static void navigateTo(BuildContext context, String routeName) {
    final route = _getRoute(routeName);
    if (route != null) {
      Navigator.of(context).push(route);
    } else {
      print('WARNING: Route not found: $routeName');
    }
  }

  // Function to define how routes are retrieved (choose one approach below)
  static Route? _getRoute(String routeName) {
    // Option 1: Using a Map for Fixed Routes
    return _routes[routeName];
  }

  // Option 1: Map for Fixed Routes (replace with your actual routes)
  static final Map<String, Route> _routes = {
    '/onboarding': MaterialPageRoute(builder: (context) => OnboardingScreen()),
    '/register': MaterialPageRoute(builder: (context) => RegisterScreen()),
  };


  static void registerRoute(String routeName, Route Function(BuildContext context) builder) {
    _routes[routeName] = builder as Route;
  }
}
