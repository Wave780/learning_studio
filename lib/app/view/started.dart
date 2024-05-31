import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_studio/app/routes/navigation_paths.dart';
import 'package:learning_studio/app/widget/custom_botton.dart';
import 'package:learning_studio/app/widget/custom_header.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              const CustomHeader(),
              const SizedBox(
                height: 220,
              ),
              CustomButton(
                onPressed: () => context.go(n10n.onbording),
                deviceSize: 200,
                colors: Colors.black,
                text: const Text(
                  'START COURSE \n' 'Duration - 30 MINS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                radius: BorderRadius.circular(6),
              )
            ])));
  }
}
