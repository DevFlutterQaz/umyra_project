import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';

class TasbihContent extends StatelessWidget {
  final TasbihModel tasbihData;
  final int length;
  final int index;
  const TasbihContent({
    super.key,
    required this.tasbihData,
    required this.length,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    List len = [
      '1',
      '2',
      '3',
    ];
    return GestureDetector(
      onTap: () =>
          context.router.push(TasbihDetailRoute(tasbihData: tasbihData)),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: ListTile(
            leading: Stack(
              children: [
                SvgPicture.asset(AppSvgImages.moon),
                Positioned(
                    top: 8,
                    bottom: 5,
                    left: 30,
                    right: 0,
                    child: Text(
                      '${len[index]}',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xff00A8A5),
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            title: Text(tasbihData.title),
          )),
    );
  }
}
