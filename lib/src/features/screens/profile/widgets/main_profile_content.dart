import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/profile/widgets/custom_profilr_button.dart';

class MainProfileContent extends StatelessWidget {
  const MainProfileContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            CustomProfileButton(
                text: 'Менің деректерім',
                onTap: () =>
                    context.router.push(const MyInformationScreenRoute())),
          ],
        ),
      ),
    );
  }
}
