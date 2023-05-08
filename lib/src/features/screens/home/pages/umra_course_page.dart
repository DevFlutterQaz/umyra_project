import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_course_button.dart';

class UmraCourseScreen extends StatelessWidget {
  const UmraCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'Start your new Umra'),
              const ColumnSpacer(4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Column(
                  children: [
                    CustomCourseButton(
                        number: "1",
                        course: 'Ihram',
                        id: 1,
                        onTap: () =>
                            context.router.push(IhramScreenRoute(index: 1))),
                    SvgPicture.asset(AppSvgImages.vector1),
                    CustomCourseButton(
                        number: "2",
                        course: 'Talbiyah',
                        id: 2,
                        onTap: () =>
                            context.router.push(TalbiyahScreenRoute(index: 2))),
                    SvgPicture.asset(AppSvgImages.vector2),
                    CustomCourseButton(
                        number: "3",
                        course: 'Tawaf',
                        id: 1,
                        onTap: () => context.router
                            .push(const TawafScreenRoute(index: 1))),
                    SvgPicture.asset(AppSvgImages.vector1),
                    CustomCourseButton(
                        number: "4",
                        course: '''Sa'i''',
                        id: 2,
                        onTap: () =>
                            context.router.push(UmraLessanRoute(index: 2))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
