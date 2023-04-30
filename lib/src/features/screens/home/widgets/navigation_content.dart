import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';

class NavigationContent extends StatelessWidget {
  const NavigationContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Card(
        color: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.lightgrayColor6, width: 0.5),
        ),
        elevation: 0,
        child: ExpansionTile(
          title: Text('Main Doors of AlHaram',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
          collapsedTextColor: Colors.black,
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          textColor: Colors.black,
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (contex, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('As Salam Gate',
                      style: Theme.of(context).textTheme.titleMedium),
                  SvgPicture.asset(AppSvgImages.marker)
                ],
              ),
              separatorBuilder: (context, index) =>
                  const Divider(color: AppColors.darkgrayColor),
              itemCount: 3,
            )
          ],
        ),
      ),
    );
  }
}
