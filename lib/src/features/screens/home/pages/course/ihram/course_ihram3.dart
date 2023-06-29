import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

class CourseIhram3Page extends StatelessWidget {
  const CourseIhram3Page({super.key});

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
              child: CustomAppBar(title: 'Ихрам намазы'),
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
                      child: Text(
                        'The ihram prayer is performed, which is like two regular Rakat prayers. In the first Rakah, Fatiha and kafirun are read, and in the second Rakah, suras Fatiha and iqas are read. If he does not know the surahs, then he can read another Surah that he knows.',
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
