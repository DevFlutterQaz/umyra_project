import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/screens/profile/widgets/custom_exit_button.dart';
import 'package:umyra/src/features/screens/profile/widgets/custom_profile_avater.dart';
import 'package:umyra/src/features/screens/profile/widgets/main_profile_content.dart';
import 'package:umyra/src/features/screens/profile/widgets/other_profile_content.dart';
import 'package:umyra/src/features/screens/profile/widgets/question_profile_content.dart';

import '../widgets/modal_message.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                Color(0xff14BCC2),
                Color(0xff14BCC2),
                Color(0xff025452),
              ])),
          child: ListView(
            children: [
              const ColumnSpacer(2),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Authorization',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.whiteColor),
                ),
              ),
              const ColumnSpacer(2),
              const CustomProfileAvatar(),
              const ColumnSpacer(0.8),
              const Text(
                'Ospan Kabdollayev',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              const ColumnSpacer(2),
              const MainProfileContent(),
              const ColumnSpacer(1.2),
              const QuestionProfileContent(),
              const ColumnSpacer(1.2),
              const OtherProfileContent(),
              const ColumnSpacer(1.2),
              CustomExitButton(
                onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ModalMessage();
                    }),
              ),
              const ColumnSpacer(1.2),
            ],
          ),
        ),
      ),
    );
  }
}
