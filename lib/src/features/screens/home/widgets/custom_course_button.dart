import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class CustomCourseButton extends StatelessWidget {
  final String course;
  final int id;
  final Function() onTap;
  const CustomCourseButton({
    super.key,
    required this.course,
    required this.id,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: id == 1 ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          id == 1
              ? Container(
                  decoration: const BoxDecoration(
                    color: AppColors.darkBlue2,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: SvgPicture.asset(AppSvgImages.image),
                  ),
                )
              : Text(
                  course,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
          const RowSpacer(2),
          id == 1
              ? Text(
                  course,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                )
              : Container(
                  decoration: const BoxDecoration(
                    color: AppColors.darkBlue2,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: SvgPicture.asset(AppSvgImages.image),
                  ),
                ),
        ],
      ),
    );
  }
}
