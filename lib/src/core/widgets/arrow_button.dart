import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
    required this.onPressed,
    this.color = AppColors.whiteColor,
    this.iconColor = Colors.black,
  });
  final Function() onPressed;
  final Color color;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: kElevationToShadow[3],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.arrow_back,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
