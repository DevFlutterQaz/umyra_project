import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';

class CustomAppBarBlue extends StatelessWidget {
  final String title;
  final bool alert;
  final Function()? onTap;
  const CustomAppBarBlue({
    super.key,
    required this.title,
    this.alert = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => context.router.pop(),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 5  horizontally
                    0.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff00827F),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor,
                shadows: [
                  const Shadow(
                    offset: Offset(0, 6),
                    blurRadius: 30.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ),
        ),
        alert
            ? Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SvgPicture.asset(AppSvgImages.alert),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
