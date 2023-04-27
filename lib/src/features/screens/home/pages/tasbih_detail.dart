import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/audio_button.dart';

class TasbihDetail extends StatelessWidget {
  const TasbihDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'Tasbih Detail'),
              const ColumnSpacer(2),
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: const BoxDecoration(
                    color: AppColors.darkBlue2,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ٱللَّٰهُمَّ صَلِّ عَلىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        '\n\nАллаһумма салли ‘ала Мухаммәдин уә ‘ала әли Мухаммәд. \n\n Я, Аллам! Пайғамбарымыз (с.а.у.) Мұхаммедке және Оның отбасы мен ұрпағына, мейіріміңді төгіп, олардың мерейін үстем ет.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              const ColumnSpacer(2),
              const AudioRegularButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
