import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';

class TasbihContent extends StatelessWidget {
  final TasbihModel tasbihData;
  const TasbihContent({
    super.key,
    required this.tasbihData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(TasbihDetailRoute(tasbihData: tasbihData)),
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(tasbihData.title,
                  style: Theme.of(context).textTheme.titleLarge),
              SvgPicture.asset(AppSvgImages.next)
            ],
          ),
        ),
      ),
    );
  }
}
