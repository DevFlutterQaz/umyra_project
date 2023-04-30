import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/text_styles.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../app/router/app_router.dart';
import '../widgets/bilim_grid_view.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //   const SizedBox(width: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Quran',
                      style: TextStyles.blackF20W600(context),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: GestureDetector(
                  onTap: () =>
                      context.router.push(const CardDetailScreenRoute()),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.darkBlue,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Күн аяты',
                              style: TextStyles.whiteF20W700(context),
                            ),
                            Text(
                              '7:205',
                              style: TextStyles.whiteF20W700(context),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'وَاذْكُرْ رَبَّكَ فِي نَفْسِكَ تَضَرُّعًا وَخِيفَةً وَدُونَ الْجَهْرِ مِنَ الْقَوْلِ بِالْغُدُوِّ وَالْآصَالِ وَلَا تَكُنْ مِنَ الْغَافِلِ',
                          style: TextStyles.whiteF14W400(context),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Және Раббыңды жалбарына әрі қорыққан түрде ішіңнен және жария емес кейіпте таңертең және кешке (күн батардан бұрын) есіңе ал да, ғапыл қалушылардан болма...',
                          style: TextStyles.whiteF14W400(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const BilimPageGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
