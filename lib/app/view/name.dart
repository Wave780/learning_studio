import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_studio/app/widget/custom_botton.dart';
import 'package:learning_studio/app/widget/custom_header.dart';
import 'package:learning_studio/app/widget/custom_placeholder.dart';
import 'package:learning_studio/app/widget/custom_textholder.dart';
import 'package:learning_studio/app/routes/navigation_paths.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

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
          child: Column(
            children: [
              const CustomHeader(),
              const SizedBox(
                height: 120,
              ),
              const TextHolder(
                  text: Text(
                "What’s your full name?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              )),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                borderSide: const BorderSide(color: Colors.black, width: 2),
                radius: BorderRadius.circular(15.47),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                onPressed: () => context.go(n10n.locationScreen),
                deviceSize: 300,
                colors: Colors.black,
                text: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                radius: BorderRadius.circular(10),
              )
            ],
          ),
        ));
  }
}
