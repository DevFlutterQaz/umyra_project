import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../widgets/custom_course_button.dart';

class SecondPageTawafScreen extends StatelessWidget {
  const SecondPageTawafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String text1 = "«Bismillahi Allahu akbar»";
    String text2 =
        '''Subhaan-Allahi uäl hämdu lillahi uä lä iläähä illallahu uallahu äkbär. Uä lä häulä uä lä quuätä illä billähil-‘aliil ‘aź iim. Uäś -ś alätu uäs-säläämu ‘alä räsuulillähi ś allallahu ‘aläihi uä sälläm. Allahummä iimänän bikä uä täś diiqan bi kitääbikä uä uäfä-än bi ‘ahdikä uät-tibä‘an lisunnäti näbiikä uä habibikä muhämmädin ś allallahu ‘aläihi uä sälläm. Rabbi-şrählii sadrii. Uä iässir lii ämrii. Uählul ‘uqdätä mil-lisänii. Rabbi innii limä änzältä iläiiä min hairin fäqiir. Allahummäj‘alhu häjjän mäbruurän uä z änbän mäğfuurän uä sä‘iän mäşkuuran. Allahummä innii äs-älukäl ‘afuä uäl ‘iffätä uäl mu‘afätäd-däimätä fid-diini uädduniä uäl äähiräti uäl fäuzä biljännäti uän-näjätä minän-näär. Allahummä uäffiqnä ilä mä tuhibbuhu uä tärd́ ahu.''';
    String text3 =
        '''Rabbänä äätinä fid-duniä häsänätäu uä fil äähiräti häsänätäu uä qinä ‘az äbän-näär. Uä ädhilnäl jännätä mä‘al äbrari iä ‘aziizu iä ğaffäru iä rabbäl-‘alämiin''';
    String iemen = "İemen tūsy men qara tas aralyğynda myna dūğa oqylady:";

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
        child: Container(
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
