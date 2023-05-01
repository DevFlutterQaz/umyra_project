import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/text_styles.dart';

import '../resources/resources.dart';

class Constants {
  static profileOnlyOne(BuildContext context, String title, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.black600(context),
          ),
          IconButton(
            onPressed: onTap,
            icon: SvgPicture.asset(AppSvgImages.rightArrowBlack),
          ),
        ],
      ),
    );
  }

  static profileExitButton(
      BuildContext context, String title, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.red600Fs16(context),
          ),
          IconButton(
            onPressed: onTap,
            icon: SvgPicture.asset(AppSvgImages.rightArrowBlack),
          ),
        ],
      ),
    );
  }
}
