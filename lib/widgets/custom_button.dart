import 'package:flutter/material.dart';
import 'package:test_screens/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? textcolor;
  final Color? bgColor;
  final void Function()? onTap;

  const CustomButton(
      {super.key,
      required this.title,
      this.textcolor,
      this.onTap,
      this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 171,
        height: 48,
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: textcolor ?? Colors.white),
        )),
      ),
    );
  }
}
