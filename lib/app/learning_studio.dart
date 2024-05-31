import 'package:flutter/material.dart';
import 'package:learning_studio/app/theme/app_theme.dart';
import 'package:learning_studio/app/view/view.dart';

class LearningStudio extends StatelessWidget {
  const LearningStudio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning Studio",
      home: const OnboardingScreen(),
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
