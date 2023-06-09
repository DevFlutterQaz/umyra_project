import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';
import 'package:umyra/src/features/screens/home/widgets/city_country.dart';
import 'package:umyra/src/features/screens/home/widgets/search_text.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: CustomAppBarBlue(
                title: 'Местоположение',
                color: AppColors.whiteColor,
              ),
            ),
            const ColumnSpacer(3.2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Text(
                'Выберите ваше местоположение',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.contentBlue),
              ),
            ),
            const ColumnSpacer(2),
            const SearchTextField(),
            const ColumnSpacer(1),
            // const Divider(color: AppColors.contentBlue),
            const ColumnSpacer(1),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: ListView.separated(
                  itemBuilder: (context, index) => const CityCountryColumn(),
                  separatorBuilder: (context, index) => const ColumnSpacer(2),
                  itemCount: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
