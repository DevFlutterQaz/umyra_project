import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class UmraButton extends StatelessWidget {
  final int id;
  final Function() onTap;
  const UmraButton({
    super.key,
    required this.id,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff00A8A5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: id == 1
                      ? Image.asset(
                          AppImages.umra1,
                          width: 30,
                        )
                      : Image.asset(AppImages.umra2),
                ),
              ),
              const RowSpacer(1.6),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        id == 1
                            ? 'Start your New Umra'
                            : 'How to perform Umrah',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                        id == 1
                            ? 'Track your Umrah step by step'
                            : 'Answers to the most important Umrah questions',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
