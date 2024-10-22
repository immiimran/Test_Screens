import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_screens/screens/fourth_number_screen.dart';
import 'package:test_screens/utils/colors.dart';
import 'package:test_screens/widgets/custom_button.dart';

class ThreeNumberScreen extends StatelessWidget {
  const ThreeNumberScreen({super.key});

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
              'assets/images/3.png',
              height: 270,
              width: 338,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "What Are You\nLooking For?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Are you looking to take a job or\nhire an employee.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 122,
                width: 171,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: AppColors.primaryColor, width: 1)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Image.asset(
                        'assets/images/job-promotion 1.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('I want a job')
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 122,
                width: 171,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300, width: 1)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Image.asset(
                        'assets/images/job-promotion 1 (1).png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('I want an employee')
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Back',
                textcolor: AppColors.primaryColor,
                bgColor: const Color(0xffF0F8F8),
              ),
              const SizedBox(
                width: 16,
              ),
              CustomButton(
                title: 'Next',
                onTap: () => Get.to(() => const FourthNumberScreen()),
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
