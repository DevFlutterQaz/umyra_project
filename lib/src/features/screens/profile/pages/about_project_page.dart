import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';

class AboutProjectScreen extends StatelessWidget {
  const AboutProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [
                Color(0xff14BCC2),
                Color(0xff14BCC2),
                Color(0xff025452),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBarBlue(
                title: 'About Project',
                color: AppColors.whiteColor,
              ),
              const ColumnSpacer(5),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.whiteColor),
                child: const Icon(
                  CupertinoIcons.moon_fill,
                  color: AppColors.contentBlue,
                  size: 80,
                ),
              ),
              //Ұмра саяхатын жасауға арналған бағдарлама
              const Text(
                'Sapar',
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
              const ColumnSpacer(3),

              const Text(
                'Ұмра саяхатын \nжасауға арналған\n бағдарлама',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              const ColumnSpacer(15),

              const Text(
                'Made in Kazakhstan\n v1.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
