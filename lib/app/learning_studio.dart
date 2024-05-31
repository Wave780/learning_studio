import 'package:flutter/material.dart';
import 'package:learning_studio/app/routes/routes.dart';
import 'package:learning_studio/app/theme/app_theme.dart';

class LearningStudio extends StatelessWidget {
  LearningStudio({super.key});

  final n10nKey = GlobalKey<NavigatorState>(debugLabel: 'global_navigator');
  late final  routeConfig = NavigationRoute(n10nKey: n10nKey).routePaths;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Learning Studio",
      routerConfig: routeConfig,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
