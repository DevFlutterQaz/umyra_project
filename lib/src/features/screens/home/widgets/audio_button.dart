import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';

class AudioRegularButtons extends StatelessWidget {
  const AudioRegularButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 22),
            child: SvgPicture.asset(AppSvgImages.replay),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.darkBlue2,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 52),
              child: Text(
                '10',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.whiteColor, fontWeight: FontWeight.normal),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 22),
            child: SvgPicture.asset(AppSvgImages.attention),
          ),
        ),
      ],
    );
  }
}
