import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../widgets/custom_course_button.dart';

class ThirdPageTawafScreen extends StatelessWidget {
  const ThirdPageTawafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String text1 = "In the name of Allah. Allah is the greatest";
    String text2 =
        '''Allany bükıl kemşılık ataulydan päkteimın. Barlyq maqtaular Allağa tän. Alladan basqa täñır joq. Alla öte üstem. Küş pen quat, ūlylyq pen şeksız qūdıret iesı tek Alla! Sansyz salauat pen sälem Allanyñ elşısı hazıret Mūhammedke (s.ğ.s.) bolsyn! Alla tağalam, sağan iman keltırıp, kıtabyñdy rastap, bergen sözımızdı oryndau üşın jäne süiıktı paiğambaryñ hazıret Mūhammedtıñ (s.ğ.s.) sünnetıne moiynsūnyp qūzyryña kelıp otyrmyn. Ua, Rabbym! Kökıregımdı aş, ısterımdı jeñıl qyl jäne myna tılımnıñ kürmeuın şeş Ua, Rabbym! Mağan syilaityn barlyq nyğmetterıñe mūqtajbyn. Alla tağalam! Qajylyğymyzdy, ūmramyzdy qabyl et. Künälarymyzdy keşır. Talabymyzdy arttyryp, eñbegımızdı jandyr.Alla tağalam! Senen dınımmen ömır sürudı, osy ömırımde jäne aqyrettık ömırımde tūraqty tynyştyq, keşırım men amandyq tıleimın. Jannatqa kıruge laiyq jäne tozaq azabynan qūtyludy sūraimyn. Özıñ jaqsy köretın jäne özıñ razy bolatyn ısterdı ısteuge jetkız.''';
    String text3 =
        '''Ua, Rabbymyz! Bızge osy düniede jäne aqyrette jaqsylyğyñdy ber, jahannam azabynan saqta. Bızdı dındar salih qūldaryñmen bırge jannatyña kırgız. Ua, dara küştıñ iesı! Ua, künälardy molynan keşıruşı! Ua, bükıl ğalamnyñ ūly Jaratuşysy! Osy lardy özıñnen ğana sūraimyz.''';
    String iemen = "İemen tūsy men qara tas aralyğynda myna dūğa oqylady:";
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
        child: Container(
          height: 450,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.darkBlue)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCourseButton(
                          course: '', id: 1, onTap: () {}, number: "1"),
                      Text(
                        text1,
                        style: TextStyles.black600(context),
                      ),
                      const ColumnSpacer(2),
                      Text(
                        text2,
                        style: TextStyles.black400Fs16(context),
                      ),
                      const ColumnSpacer(1),
                      // Text(
                      //   iemen,
                      //   style: TextStyles.black600(context),
                      //   textAlign: TextAlign.center,
                      // ),
                      // const ColumnSpacer(1),
                      // Text(
                      //   text3,
                      //   style: TextStyles.black400Fs16(context),
                      //   textAlign: TextAlign.start,
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
