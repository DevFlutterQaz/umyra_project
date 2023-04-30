import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class CustomProfileButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool language;
  const CustomProfileButton({
    super.key,
    required this.text,
    required this.onTap,
    this.language = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Row(
            mainAxisAlignment: !language
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            children: [
              Text(text, style: Theme.of(context).textTheme.titleLarge),
              language ? const Spacer() : Container(),
              language
                  ? Text(
                      'Rus',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: AppColors.lightgrayColor5),
                    )
                  : Container(),
              const RowSpacer(1.2),
              SvgPicture.asset(AppSvgImages.next)
            ],
          ),
        ),
      ),
    );
  }
}
