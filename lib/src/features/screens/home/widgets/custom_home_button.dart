import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';

class CustomHomeButtom extends StatelessWidget {
  const CustomHomeButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.5, vertical: 15),
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightgrayColor3,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(AppSvgImages.qibla),
                  )),
              const ColumnSpacer(0.8),
              Text('Qibla', style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ));
  }
}
