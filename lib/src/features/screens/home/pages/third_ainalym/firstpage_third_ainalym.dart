import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/text_styles.dart';
import '../../../../../core/widgets/column_spacer.dart';
import '../../widgets/custom_course_button.dart';

class FirstPageThirdAinalymScreen extends StatelessWidget {
  const FirstPageThirdAinalymScreen({super.key});

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
                          course: '', id: 1, onTap: () {}, number: "3"),
                      const ColumnSpacer(2),
                      Text(
                        text1,
                        style: TextStyles.black600(context),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/png/secondainalym_first.jpg',
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
