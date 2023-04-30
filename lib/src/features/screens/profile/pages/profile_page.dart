import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';
import 'package:umyra/src/features/screens/profile/widgets/custom_exit_button.dart';
import 'package:umyra/src/features/screens/profile/widgets/custom_profile_avater.dart';
import 'package:umyra/src/features/screens/profile/widgets/main_profile_content.dart';
import 'package:umyra/src/features/screens/profile/widgets/other_profile_content.dart';
import 'package:umyra/src/features/screens/profile/widgets/question_profile_content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const ColumnSpacer(2),
            const CustomProfileAvatar(),
            const ColumnSpacer(0.8),
            Text(
              'Балабек Динмухамед',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const ColumnSpacer(2),
            const MainProfileContent(),
            const ColumnSpacer(1.2),
            const QuestionProfileContent(),
            const ColumnSpacer(1.2),
            const OtherProfileContent(),
            const ColumnSpacer(1.2),
            CustomExitButton(onTap: () {}),
            const ColumnSpacer(1.2),
          ],
        ),
      ),
    );
  }
}
