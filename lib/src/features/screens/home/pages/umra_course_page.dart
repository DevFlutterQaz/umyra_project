import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/widgets/course_button.dart';

class UmraCourseScreen extends StatelessWidget {
  const UmraCourseScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ColumnSpacer(5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: CustomAppBar(title: 'Start your new Umra'),
            ),
            const ColumnSpacer(2),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: ListView(
                    children: [
                      CourseButton(
                        title: 'Ihram',
                        isFinish: false,
                        image: AppImages.ihram,
                        onTap: () => context.router
                            .push(const CouseTeoreticalPageRoute()),
                      ),
                      const ColumnSpacer(2),
                      CourseButton(
                        title: 'Talbiyah',
                        isFinish: false,
                        image: AppImages.tabiyah,
                        onTap: () => context.router
                            .push(const CourseTalbiyahPageRoute()),
                      ),
                      const ColumnSpacer(2),
                      CourseButton(
                        title: 'Tawaf',
                        isFinish: false,
                        image: AppImages.tawaf,
                        onTap: () =>
                            context.router.push(const CouseTawafPageRoute()),
                      ),
                      // const ColumnSpacer(2),
                      // CourseButton(
                      //   title: 'Sa’i',
                      //   isFinish: false,
                      //   image: AppImages.sai,
                      //   onTap: () {},
                      // ),
                      const ColumnSpacer(2),
                      CourseButton(
                        title: 'Hair Shaving',
                        isFinish: false,
                        image: AppImages.hair,
                        onTap: () =>
                            context.router.push(const CouseHairPageRoute()),
                      ),
                      const ColumnSpacer(2),
                      Text(
                        'Umrah is an act of worshipping Allah by entering the state of Ihram, circumambulating the Kaaba, running between Safa and Marwa, and having the head shaved or trimmed.',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppColors.whiteColor),
                      ),
                      const ColumnSpacer(3),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
