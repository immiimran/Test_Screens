import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_screens/screens/three_number_screen.dart';
import 'package:test_screens/utils/colors.dart';
import 'package:test_screens/widgets/custom_button.dart';

class TwoNumberScreen extends StatelessWidget {
  const TwoNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              'assets/images/2.png',
              height: 270,
              width: 338,
            ),
          ),
          const SizedBox(height: 45),
          DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(activeColor: AppColors.primaryColor),
          ),
          const SizedBox(height: 16),
          const Text(
            "Find Your Dream\nJob Here!",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Skip',
                textcolor: AppColors.primaryColor,
                bgColor: const Color(0xffF0F8F8),
              ),
              const SizedBox(
                width: 16,
              ),
              CustomButton(
                title: 'Get Started',
                onTap: () => Get.to(() => const ThreeNumberScreen()),
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
