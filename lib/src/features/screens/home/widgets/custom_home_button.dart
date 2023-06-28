import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';

class CustomHomeButtom extends StatelessWidget {
  final String image;
  final String title;
  final Function() onTap;
  const CustomHomeButtom({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: kElevationToShadow[3],
                  color: AppColors.whiteColor,
                ),
                child: image.contains('tasbih')
                    ? Padding(
                        padding: const EdgeInsets.all(15),
                        child: Stack(
                          children: [
                            SvgPicture.asset(image),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('33',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: AppColors.contentBlue,
                                            fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding:
                            EdgeInsets.all(image.contains('svg') ? 15 : 14),
                        child: image.contains('svg')
                            ? SvgPicture.asset(image, height: 24)
                            : Image.asset(image),
                      )),
            const ColumnSpacer(0.8),
            Text(title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.whiteColor)),
          ],
        ),
      ),
    );
  }
}
