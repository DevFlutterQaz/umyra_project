import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_course_button.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';

class FirstPageTawafScreen extends StatelessWidget {
  const FirstPageTawafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String text1 = "بسم الله الله أكبر";
    String iemen = "İemen tūsy men qara tas aralyğynda myna dūğa oqylady:";

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.darkBlue)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCourseButton(
                          course: '', id: 1, onTap: () {}, number: "1"),
                      const ColumnSpacer(2),
                      Text(
                        text1,
                        style: TextStyles.black600(context),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/png/tawaf_image1.jpg',
                        ),
                      ),
                      const ColumnSpacer(1),
                      Text(iemen),
                      const ColumnSpacer(1),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/png/kk.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
