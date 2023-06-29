import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/features/screens/tour/widgets/custom_cards.dart';

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});

  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  TextEditingController fromController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ColumnSpacer(1),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Umra',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                        shadows: [
                          const Shadow(
                            offset: Offset(0, 6),
                            blurRadius: 30.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const ColumnSpacer(2),
                  const CustomCards(
                    data: 'Дата : 11.06.2023 - 25.06.2023',
                    title: 'Atlas Tourism',
                    cost: '1 000 000 ₸',
                    costName: 'Стоимость',
                    mesto: 'Количество мест : 50',
                    phoneNumber: '+7 708 235 79 87',
                    plane: 'Air Astana',
                    // telegramAppFunc: () {
                    //   launchUrl(Uri.parse('https://t.me/sltnkondy'));
                    // },
                  ),
                  const ColumnSpacer(2),
                  const CustomCards(
                    data: 'Дата : 16.08.2023 - 30.08.2023',
                    title: 'Zam Zam Travel',
                    cost: '930 000 ₸',
                    costName: 'Стоимость',
                    mesto: 'Количество мест : 30',
                    phoneNumber: '+7 708 200 44 67',
                    plane: 'Air Astana',
                    // telegramAppFunc: () {
                    //   launchUrl(Uri.parse('https://t.me/sltnkondy'));
                    // },
                  ),
                  const ColumnSpacer(2),
                  const CustomCards(
                    data: 'Дата : 06.09.2023 - 20.09.2023',
                    title: 'Atlas Tourism',
                    cost: '1 080 000 ₸',
                    costName: 'Стоимость',
                    mesto: 'Количество мест : 25',
                    phoneNumber: '+7 747 050 56 10',
                    plane: 'Scat Airlines',
                    // telegramAppFunc: () {
                    //   launchUrl(Uri.parse('https://t.me/sltnkondy'));
                    // },
                  ),
                  const ColumnSpacer(2),
                  const CustomCards(
                    data: 'Дата : 15.10.2023 - 29.10.2023',
                    title: 'Alash Travel',
                    cost: '700 000 ₸',
                    costName: 'Стоимость',
                    mesto: 'Количество мест : 35',
                    phoneNumber: '+7 747 050 56 10',
                    plane: 'Air Astana',
                    // telegramAppFunc: () {
                    //   launchUrl(Uri.parse('https://t.me/sltnkondy'));
                    // },
                  ),
                  const ColumnSpacer(2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
