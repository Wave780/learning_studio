import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_studio/app/utils/image.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Image(
                  image: AssetImage(AppAssetsImage.appLogo),
                ),
              ),
              const Text(
                'Learning Studio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 280,
              ),
              InkWell(
                child: const Image(
                  image: AssetImage(AppAssetsImage.forwardArrow),
                ),
                onTap: () => context.go("/register"),
              ),
            ],
          ),
        ));
  }
}
