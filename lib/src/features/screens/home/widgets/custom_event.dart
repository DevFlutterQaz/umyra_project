import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class CustomEventWidget extends StatelessWidget {
  const CustomEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15.5),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.darkBlue2,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Column(
                  children: [
                    Text('27',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: AppColors.whiteColor)),
                    Text('АПР',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppColors.lightgrayColor5)),
                  ],
                ),
              ),
            ),
            const RowSpacer(1.6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ораза Айт',
                    style: Theme.of(context).textTheme.titleLarge),
                const ColumnSpacer(0.4),
                Text('Осталость 0 дней',
                    style: Theme.of(context).textTheme.bodyMedium),
                const ColumnSpacer(0.4),
                Text('01 Шавваль 1444',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.lightgrayColor5)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
