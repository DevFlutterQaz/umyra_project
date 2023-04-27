import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class UmraButton extends StatelessWidget {
  const UmraButton({
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
        padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.darkBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Image.asset(AppImages.umra1),
              ),
            ),
            const RowSpacer(1.6),
            Column(
              children: [
                Text('Start your New Umra',
                    style: Theme.of(context).textTheme.titleLarge),
                Text('Track your Umrah step by step',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.normal)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
