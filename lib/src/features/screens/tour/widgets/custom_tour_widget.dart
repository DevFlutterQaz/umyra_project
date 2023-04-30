import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CustomTourWidget extends StatelessWidget {
  final Function() onTap;
  final String label;
  final String text;
  final String icon;
  const CustomTourWidget({
    super.key,
    required this.onTap,
    required this.label,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.darkgrayColor2),
                    ),
                    Text(
                      text,
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
