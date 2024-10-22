import 'package:flutter/material.dart';
import 'package:test_screens/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset('assets/images/image.png'),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'JobNect',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Login to your account & find your job',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF0F8F8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff199496), width: .5),
                  ),
                  hintText: 'Enter Your Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColors.primaryColor,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF0F8F8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff199496), width: .5),
                  ),
                  hintText: 'Enter Your Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: AppColors.primaryColor,
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://yt3.googleusercontent.com/viNp17XpEF-AwWwOZSj_TvgobO1CGmUUgcTtQoAG40YaYctYMoUqaRup0rTxxxfQvWw3MvhXesw=s900-c-k-c0x00ffffff-no-rj',
                height: 16,
              ),
              Text(
                " Login with Google",
                style: TextStyle(fontSize: 16, color: AppColors.primaryColor),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
