import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/launch_in_browser_util.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_navigation.dart';

class NavigationContent extends StatelessWidget {
  final ModelNavigation navigationData;
  const NavigationContent({
    super.key,
    required this.navigationData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.lightgrayColor6, width: 0.5),
      ),
      elevation: 0,
      child: ExpansionTile(
        title: Text(navigationData.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600)),
        collapsedTextColor: Colors.black,
        iconColor: const Color(0xff00827F),
        collapsedIconColor: const Color(0xff00827F),
        textColor: Colors.black,
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
        children: [
          const Divider(color: Color(0xff00827F)),
          // const SizedBox(height: 10),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (contex, index) => GestureDetector(
              onTap: () => LaunchInBrowserUtil.launchUrl(navigationData.link),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(navigationData.title,
                      style: Theme.of(context).textTheme.titleMedium),
                  SvgPicture.asset(
                    AppSvgImages.marker,
                    color: const Color(0xff00827F),
                  )
                ],
              ),
            ),
            separatorBuilder: (context, index) =>
                const Divider(color: AppColors.darkgrayColor),
            itemCount: 1,
          )
        ],
      ),
    );
  }
}
