import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/screens/home/widgets/namaz_time.dart';

class StatusTimeCustomWidget extends StatelessWidget {
  const StatusTimeCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 11, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Isha',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '01:35:36',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Almaty',
                      style: Theme.of(context).textTheme.titleLarge,
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
              children: const [
                NamazTime(),
                NamazTime(),
                NamazTime(),
                NamazTime(),
                NamazTime(),
                NamazTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
