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
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: AppColors.lightgrayColor5)),
      child: ListTile(
          minLeadingWidth: 10,
          dense: true,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                numberOfSurahs.toString(),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w400,
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
          subtitle: Text(
            '$city - $numberSura ayahs',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: IconButton(
              onPressed: null, icon: SvgPicture.asset(AppSvgImages.next))),
    );
  }
}
