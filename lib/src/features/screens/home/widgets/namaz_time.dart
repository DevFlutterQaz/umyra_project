import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/namaz_time_model.dart';

class NamazTime extends StatelessWidget {
  final String name;
  final NamazModel namazData;
  final String time;
  const NamazTime({
    super.key,
    required this.name,
    required this.time,
    required this.namazData,
  });

  @override
  Widget build(BuildContext context) {
    var getTime = DateTime.now();
    var onlyTime1 = int.parse(getTime.toString().substring(11, 13));
    var onlyTime2 = int.parse(getTime.toString().substring(14, 16));

    var n = int.parse(time.substring(0, 2));
    var newNum = n + 6;
    if (newNum > 23) {
      newNum = newNum - 24;
    }
    return Container(
      decoration: BoxDecoration(
          color:
              name == 'Күн' ? AppColors.contentBlue : AppColors.lightgrayColor,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Column(
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: name == 'Күн'
                      ? AppColors.whiteColor
                      : AppColors.lightgrayColor2),
            ),
            const ColumnSpacer(0.4),
            Text(
              '${newNum.toString()}:${time.substring(3)}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      name == 'Күн' ? AppColors.whiteColor : AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
