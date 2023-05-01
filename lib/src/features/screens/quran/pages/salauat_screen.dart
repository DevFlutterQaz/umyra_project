import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/text_styles.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/arrow_button.dart';

class SalauatScreen extends StatefulWidget {
  const SalauatScreen({super.key});

  @override
  State<SalauatScreen> createState() => _SalauatScreenState();
}

class _SalauatScreenState extends State<SalauatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ArrowButton(
                        onPressed: () => context.router.pop(),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Салауат',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff50A87E)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '',
                            style: TextStyles.white700Fs20(context),
                          ),
                          const Icon(
                            Icons.bookmark,
                            color: AppColors.whiteColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text(
                                'ٱللَّٰهُمَّ صَلِّ عَلىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ',
                                textAlign: TextAlign.justify,
                                style: TextStyles.white400Fs16(context)),
                            const SizedBox(height: 16),
                            Text(
                                'Аллаһумма салли ‘ала Мухаммәдин уә ‘ала әли Мухаммәд.',
                                textAlign: TextAlign.center,
                                style: TextStyles.white400Fs16(context)),
                            const SizedBox(height: 16),
                            Text(
                                'Я, Аллам! Пайғамбарымыз (с.а.у.) Мұхаммедке және Оның отбасы мен ұрпағына, мейіріміңді төгіп, олардың мерейін үстем ет.',
                                textAlign: TextAlign.center,
                                style: TextStyles.white400Fs16(context)),
                            const SizedBox(height: 40),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.whiteColor),
                              child: const Icon(Icons.play_arrow),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.whiteColor),
                    child: const Icon(
                      Icons.replay_outlined,
                      color: AppColors.greenColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 52),
                    decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '1',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: AppColors.whiteColor),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.whiteColor),
                    child: const Icon(Icons.info_outline,
                        color: AppColors.greenColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
