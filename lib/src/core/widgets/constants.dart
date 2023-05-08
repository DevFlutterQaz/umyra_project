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

  static modalBottomSheet(
      BuildContext context, List actionName, List containersText, int index) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        // <-- Rounded
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 360,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actionName[index],
                      style: TextStyles.black600(context),
                    ),
                    Text(
                      containersText[index],
                      style: TextStyles.black400Fs16(context),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
