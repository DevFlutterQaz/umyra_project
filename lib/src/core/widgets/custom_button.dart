import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.color = AppColors.greenColor,
    required this.label,
  });
  final VoidCallback onPressed;
  final Color? color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: color,
      onPressed: onPressed,
      borderRadius: BorderRadius.circular(12),
      padding: const EdgeInsets.all(16),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: color == AppColors.greenColor
                  ? AppColors.whiteColor
                  : AppColors.greenColor,
            ),
      ),
    );
  }
}
