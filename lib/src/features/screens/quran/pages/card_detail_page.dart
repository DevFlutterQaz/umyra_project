import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomAppBar(title: 'Күн аяты'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 34),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.darkBlue),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Күн аяты',
                          style: TextStyles.white700Fs20(context),
                        ),
                        Text(
                          '7:205',
                          style: TextStyles.white700Fs20(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'وَاذْكُرْ رَبَّكَ فِي نَفْسِكَ تَضَرُّعًا وَخِيفَةً وَدُونَ الْجَهْرِ مِنَ الْقَوْلِ بِالْغُدُوِّ وَالْآصَالِ وَلَا تَكُنْ مِنَ الْغَافِلِ',
                      style: TextStyles.white400Fs14(context),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Және Раббыңды жалбарына әрі қорыққан түрде ішіңнен және жария емес кейіпте таңертең және кешке (күн батардан бұрын) есіңе ал да, ғапыл қалушылардан болма.  Және Раббыңды жалбарына әрі қорыққан түрде ішіңнен және жария емес кейіпте таңертең және кешке (күн батардан бұрын) есіңе ал да, ғапыл қалушылардан болма.  Және Раббыңды жалбарына әрі қорыққан түрде ішіңнен және жария емес кейіпте таңертең және кешке (күн батардан бұрын) есіңе ал да, ғапыл қалушылардан болма.  Және Раббыңды жалбарына әрі қорыққан түрде ішіңнен және жария емес кейіпте таңертең және кешке (күн батардан бұрын) есіңе ал да, ғапыл қалушылардан болма. ',
                      style: TextStyles.white400Fs14(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
