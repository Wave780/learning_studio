import 'package:flutter/material.dart';
import 'package:learning_studio/app/utils/image.dart';
import 'package:learning_studio/app/widget/custom_botton.dart';

import 'package:learning_studio/app/widget/custom_placeholder.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Center(
              child: Image(
                height: 80,
                image: AssetImage(AppAssetsImage.appLogo),
              ),
            ),
            const Text(
              'Register',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Referral code",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Set New Password",
              hintStyle: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Confirm New Password",
              hintStyle: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            CustomButton(
              deviceSize: 150,
              colors: Colors.orange.shade900,
              text: 'Register',
            )
          ],
        ),
      ),
    );
  }
}
