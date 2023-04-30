import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/features/screens/profile/widgets/custom_profilr_button.dart';

class OtherProfileContent extends StatelessWidget {
  const OtherProfileContent({
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
                text: 'Жоба туралы', language: true, onTap: () {}),
            CustomProfileButton(text: 'Құпия сөзді өзгерту', onTap: () {}),
            CustomProfileButton(text: 'Хабарлама', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
