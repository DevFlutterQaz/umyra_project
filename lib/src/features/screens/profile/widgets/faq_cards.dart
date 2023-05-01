import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';

class FaqCards extends StatelessWidget {
  const FaqCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            backgroundColor: Colors.white,
            title: Text('Таңертең оқылатын дұға',
                style: TextStyles.black600(context)),
            textColor: Colors.black,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Column(
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
