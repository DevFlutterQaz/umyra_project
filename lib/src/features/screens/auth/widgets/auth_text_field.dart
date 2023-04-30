import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.placeholder,
    this.textInputType = TextInputType.text,
    this.suffix,
    this.obscureText,
    required this.controller,
  });
  final String placeholder;
  final TextInputType? textInputType;
  final Widget? suffix;
  final bool? obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: placeholder,
        suffixIcon: suffix,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grayColor),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
