import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

class CourseTawaf1Page extends StatelessWidget {
  const CourseTawaf1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          children: [
            const ColumnSpacer(5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: CustomAppBar(title: 'Қағбаны көрген кезде'),
            ),
            const ColumnSpacer(2),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Image.asset(AppImages.tt),
                    ),
                    const ColumnSpacer(1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Оқылуы: Аллаһуммә зид һәз ̣әл бәйтә тәшриифәу уә тә‘з́ иимәу уә тәкриимәу уә мәһәәбәтәу уә зид мән шәррәфәһу уә кәррәмәһу уә миммән хәжжәһу әуи‘тәмәрәһу тәшриифәу уә тәкриимәу уә тә‘з́ иимәу уә биррән. Аллаһуммә әнтәс-сәләәму уә минкәс-сәләәму фәхәйинә раббәнә биссәләәм. Раббәнә уә әдхилнәл жәннәтә дәәрәс-сәләәми тәбәәрәктә тә‘аләйтә иә з́ әлжжәләли уәл икрам.',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
                    const ColumnSpacer(1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Мағынасы: Алла тағалам! Мына Қағбаның абырой-беделін, құрметі мен айбынын арттыра гөр! Қажылық не ұмра жасаушылардың да абырой-беделін, құрметін, жақсылықтарын арттыра түс! Алла тағалам! Сәлем – Сенсің! Амандық пен саламаттық тек Сенде. Ұлы Жаратушымыз! Бізге тыныштықта өмір сүруімізді нәсіп ете гөр. Сенің мекенің, тыныштық пен бейбітшілік отауы болған жаннатыңа кіруімізді нәсіп ет. Ұлылық пен құрметке лайық Алла тағалам! Сен барлық нәрседен ұлысың әрі жоғарысың! \n Осыдан кейін Алладан не тілегіміз келсе соны тілеп, немесе неден сақтауын қаласақ, содан сақтауын сұрап дұға жасаймыз',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 3),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'DONE',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: AppColors.contentBlue,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
