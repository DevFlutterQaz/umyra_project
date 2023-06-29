import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

class CourseTalbiah2Page extends StatelessWidget {
  const CourseTalbiah2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xff14BCC2),
              Color(0xff14BCC2),
              Color(0xff025452),
            ],
          ),
        ),
        child: Column(
          children: [
            const ColumnSpacer(5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: CustomAppBar(title: 'Тәкбір айту'),
            ),
            const ColumnSpacer(2),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Image.asset(AppImages.talbiah2),
                    ),
                    const ColumnSpacer(1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Okylyu: Allahu akbar, Allahu akbar. May Allah bless and greet him. Allahu akbar wa lillahil hamd.',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.whiteColor,
                          shadows: [
                            const Shadow(
                              offset: Offset(0, 6),
                              blurRadius: 30.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const ColumnSpacer(1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Meaning: Allah is great! God is great! There is no God but Allah! God is great! Only Allah is the greatest, and all praise is inherent in him!',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.whiteColor,
                          shadows: [
                            const Shadow(
                              offset: Offset(0, 6),
                              blurRadius: 30.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const ColumnSpacer(2),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 3),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'DONE',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: AppColors.contentBlue,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
