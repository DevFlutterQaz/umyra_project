import 'package:flutter/cupertino.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CustomProfileAvatar extends StatelessWidget {
  const CustomProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              CupertinoIcons.person_circle,
              size: 70,
              color: AppColors.whiteColor,
            )),
      ),
    );
  }
}
