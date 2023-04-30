import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String palceholder;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.palceholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: palceholder,
        labelStyle: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColors.darkgrayColor2),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SvgPicture.asset(AppSvgImages.location),
        ),
        border: InputBorder.none,
        isDense: true,
      ),
    );
  }
}
