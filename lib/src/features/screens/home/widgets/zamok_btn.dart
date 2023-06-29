import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class ZamokButton extends StatelessWidget {
  final int id;
  final String title;
  final Function()? onTap;
  final bool isOpen;
  const ZamokButton({
    super.key,
    required this.id,
    required this.onTap,
    required this.title,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Container(
          decoration: BoxDecoration(
            color: isOpen ? AppColors.whiteColor : AppColors.grayColor2,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: kElevationToShadow[3],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  id.toString(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.contentBlue4,
                      ),
                ),
                const RowSpacer(2),
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                const RowSpacer(2),
                SvgPicture.asset(
                    isOpen ? AppSvgImages.zamok : AppSvgImages.zamokClose)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
