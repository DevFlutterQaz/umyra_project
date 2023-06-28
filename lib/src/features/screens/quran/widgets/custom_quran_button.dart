import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';

class CustomQuranButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final String city;
  final int numberSura;
  final int numberOfSurahs;
  const CustomQuranButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.city,
    required this.numberSura,
    required this.numberOfSurahs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              boxShadow: kElevationToShadow[6],
              border: Border.all(color: AppColors.lightgrayColor5)),
          child: ListTile(
            minLeadingWidth: 10,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.contentBlue4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Text(
                      numberOfSurahs.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: [
                Text(
                  '$city  ',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightgrayColor5,
                      ),
                ),
                SvgPicture.asset(AppSvgImages.moonLittle),
                Text(
                  '$numberSura',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightgrayColor5,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
