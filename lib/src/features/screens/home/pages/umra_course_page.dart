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
                        course: 'Ihram',
                        id: 1,
                        onTap: () =>
                            context.router.push(UmraLessanRoute(index: 1))),
                    SvgPicture.asset(AppSvgImages.vector1),
                    CustomCourseButton(
                        course: 'Talbiyah',
                        id: 2,
                        onTap: () =>
                            context.router.push(UmraLessanRoute(index: 2))),
                    SvgPicture.asset(AppSvgImages.vector2),
                    CustomCourseButton(
                        course: 'Tawwaf',
                        id: 1,
                        onTap: () =>
                            context.router.push(UmraLessanRoute(index: 1))),
                    SvgPicture.asset(AppSvgImages.vector1),
                    CustomCourseButton(
                        course: 'Maqan Ibrahim',
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
