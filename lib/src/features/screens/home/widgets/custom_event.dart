import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_event.dart';

class CustomEventWidget extends StatelessWidget {
  final EventModel eventData;
  const CustomEventWidget({
    super.key,
    required this.eventData,
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
                    Text(eventData.holidayDate.date.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: AppColors.whiteColor)),
                    Text(getMonthName(eventData.holidayDate.month),
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
                Text(eventData.title,
                    style: Theme.of(context).textTheme.titleLarge),
                const ColumnSpacer(0.4),
                // Text('Осталость 0 дней',
                //     style: Theme.of(context).textTheme.bodyMedium),
                const ColumnSpacer(0.4),
                Text(
                    '${eventData.hijriMonthName} ${eventData.holidayDate.year}',
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

String getMonthName(int month) {
  switch (month) {
    case 0:
      return 'JAN';
    case 1:
      return 'FEB';
    case 2:
      return 'MAR';
    case 3:
      return 'APR';
    case 4:
      return 'MAY';
    case 5:
      return 'JUN';
    case 6:
      return 'JUL';
    case 7:
      return 'AUG';
    case 8:
      return 'SEP';
    case 9:
      return 'OCT';
    case 10:
      return 'NOV';
    case 11:
      return 'DEC';
    default:
      return 'DEC';
  }
}
