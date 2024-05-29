

import 'package:flutter/material.dart';
import 'package:learning_studio/app/routes/routes.dart';
import 'package:learning_studio/app/theme/app_theme.dart';


class LearningStudio extends StatefulWidget {
 
  const LearningStudio({super.key});

  @override
  State<LearningStudio> createState() => _LearningStudioState();
}

class _LearningStudioState extends State<LearningStudio> {
   
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      title: "Learning Studio",
      routerConfig: AppPages().routes,
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
