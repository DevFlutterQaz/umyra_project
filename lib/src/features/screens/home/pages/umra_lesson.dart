import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_lesson_button.dart';

class UmraLessan extends StatelessWidget {
  final int index;
  const UmraLessan({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: index == 1
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomAppBar(title: 'Ihram'),
                    const ColumnSpacer(2),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) =>
                            const CustomLessonButton(),
                        separatorBuilder: (context, index) =>
                            const ColumnSpacer(0.8),
                        itemCount: 7,
                      ),
                    )
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomAppBar(title: 'Tawwaf', alert: true, onTap: () {}),
                    const Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.darkBlue2,
                      ),
                      child: Center(
                        child: Text(
                          '10',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
        ),
      ),
    );
  }
}
