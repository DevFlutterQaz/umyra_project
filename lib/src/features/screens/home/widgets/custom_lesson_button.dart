import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class CustomLessonButton extends StatelessWidget {
  const CustomLessonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: AppColors.lightgrayColor6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.4, vertical: 19.5),
        child: Row(
          children: [
            SvgPicture.asset(AppSvgImages.nozhnisy),
            const RowSpacer(1.8),
            Text(
              'Ihram',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.darkgrayColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
