import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_studio/app/utils/image.dart';
import 'package:learning_studio/app/widget/custom_botton.dart';
import 'package:learning_studio/app/routes/navigation_paths.dart';
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
            CustomTextField(
              borderSide: BorderSide.none,
              radius: BorderRadius.circular(5.47),
              hintText: "Email",
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              borderSide: BorderSide.none,
              radius: BorderRadius.circular(5.47),
              hintText: "Referral code",
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              borderSide: BorderSide.none,
              radius: BorderRadius.circular(5.47),
              hintText: "Set New Password",
              hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              borderSide: BorderSide.none,
              radius: BorderRadius.circular(5.47),
              hintText: "Confirm New Password",
              hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            CustomButton(
              deviceSize: 150,
              colors: Colors.orange.shade900,
              text: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              onPressed: () => context.go(n10n.nameScreen),
              radius: BorderRadius.circular(35),
            ),
          ],
        ),
      ),
    );
  }
}
