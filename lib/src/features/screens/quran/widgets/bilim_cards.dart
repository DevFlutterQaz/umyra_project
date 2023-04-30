import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/resources/text_styles.dart';

class BilimCards extends StatelessWidget {
  const BilimCards(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onTap});

  final String title;
  final String subtitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.whiteColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.black700Fs20(context),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyles.gray400Fs12(context),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: AppColors.whiteColor,
                  elevation: 0,
                  onPressed: onTap,
                  child: SvgPicture.asset(AppSvgImages.rightArrowBlack),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
