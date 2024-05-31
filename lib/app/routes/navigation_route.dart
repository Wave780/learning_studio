import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_studio/app/routes/navigation_paths.dart';
import 'package:learning_studio/app/view/view.dart';

class NavigationRoute {
  final GlobalKey<NavigatorState> n10nKey;

  NavigationRoute({
    required this.n10nKey,
  });

  //Routes
  GoRouter get routePaths {
    return GoRouter(
      navigatorKey: n10nKey,
      initialLocation: n10n.onbording,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: n10n.onbording,
          name: n10n.onbording,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 400),
              reverseTransitionDuration: const Duration(milliseconds: 200),
              child: const OnboardingScreen(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: n10n.register,
          name: n10n.register,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 400),
              reverseTransitionDuration: const Duration(milliseconds: 200),
              child: const RegisterScreen(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
      ],
    );
  }
}
