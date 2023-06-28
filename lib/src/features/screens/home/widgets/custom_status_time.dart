import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/namaz_time_model.dart';
import 'package:umyra/src/features/screens/home/widgets/namaz_time.dart';

class StatusTimeCustomWidget extends StatelessWidget {
  final NamazModel namazData;
  const StatusTimeCustomWidget({
    super.key,
    required this.namazData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: kElevationToShadow[3],
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   'Isha',
                    //   style: Theme.of(context).textTheme.titleSmall,
                    // ),
                    DigitalClock(
                      digitAnimationStyle: Curves.easeInOut,
                      colon: Text(
                        ':',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      hourMinuteDigitTextStyle:
                          Theme.of(context).textTheme.titleLarge,
                      secondDigitTextStyle:
                          Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          context.router.push(const LocationScreenRoute()),
                      child: Text(
                        'Almaty',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Text(
                      'Казахстан',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
            const ColumnSpacer(1.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NamazTime(name: 'Таң', time: namazData.time.fajr),
                NamazTime(name: 'Күн', time: namazData.time.sunrise),
                NamazTime(name: 'Бесін', time: namazData.time.sunrise),
                NamazTime(name: 'Екінті', time: namazData.time.dhuhr),
                NamazTime(name: 'Шам', time: namazData.time.asr),
                NamazTime(name: 'Құптан', time: namazData.time.isha),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
