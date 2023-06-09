import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool alert;
  final Function()? onTap;
  const CustomAppBar({
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
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: kElevationToShadow[3],
            ),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.contentBlue,
              ),
            ),
          ),
        ),
        const RowSpacer(1),
        Align(
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
                ]),
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
