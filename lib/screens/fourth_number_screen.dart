import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_screens/screens/login_screen.dart';
import 'package:test_screens/utils/colors.dart';
import 'package:test_screens/widgets/custom_button.dart';

class FourthNumberScreen extends StatelessWidget {
  const FourthNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              'assets/images/4.png',
              height: 270,
              width: 338,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "Welcome Back",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Explore all the most exciting job roles based\non your interest and study major.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Continue with Guest',
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Login',
                onTap: () => Get.to(() => const LoginScreen()),
                textcolor: AppColors.primaryColor,
                bgColor: const Color(0xffF0F8F8),
              ),
              const SizedBox(
                width: 16,
              ),
              CustomButton(
                title: 'Sign up',
                onTap: () => Get.to(() => const LoginScreen()),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
