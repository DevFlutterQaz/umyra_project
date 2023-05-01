import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';

class SureWidget extends StatelessWidget {
  final String arabName;
  final String description;
  final int numberSura;
  final int index;
  final String audio;
  const SureWidget({
    super.key,
    required this.arabName,
    required this.description,
    required this.numberSura,
    required this.index,
    required this.audio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '1:${numberSura.toString()}',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
            const ColumnSpacer(1.7),
            Text(
              arabName,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
            const ColumnSpacer(1.2),
            Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
