import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/screens/tour/widgets/custom_tour_widget.dart';
import 'package:umyra/src/features/screens/tour/widgets/custom_text_filed.dart';

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});

  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  TextEditingController fromController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Umra&Hajj',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(19),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                boxShadow: kElevationToShadow[1],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Confirm',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ColumnSpacer(3.2),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    child: Column(
                      children: [
                        CustomTextField(
                            palceholder: 'Откуда', controller: fromController),
                        const Divider(color: AppColors.lightgrayColor6),
                        CustomTextField(
                            palceholder: 'Куда', controller: fromController),
                      ],
                    ),
                  ),
                ),
                const ColumnSpacer(1),
                CustomTourWidget(
                  onTap: () {},
                  label: 'Месяц поездки',
                  text: 'Май',
                  icon: AppSvgImages.calendar2,
                ),
                const ColumnSpacer(1),
                CustomTourWidget(
                  onTap: () {},
                  label: 'Количество людей',
                  text: '1 взрослый',
                  icon: AppSvgImages.users,
                ),
                const ColumnSpacer(1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTourWidget(
                      onTap: () {},
                      label: 'Вид поездки',
                      text: 'Умра',
                      icon: AppSvgImages.glob,
                    ),
                    CustomTourWidget(
                      onTap: () {},
                      label: 'Тариф',
                      text: 'Комфорт',
                      icon: AppSvgImages.tarif,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
