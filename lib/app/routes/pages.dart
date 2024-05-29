import 'package:go_router/go_router.dart';
import 'package:learning_studio/app/view/view.dart';

class AppPages {
  final GoRouter routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    )
  ]);
}
