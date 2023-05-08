import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_lesson_button.dart';

import '../../../../core/resources/text_styles.dart';

class TalbiyahScreen extends StatefulWidget {
  final int? index;
  const TalbiyahScreen({
    super.key,
    required this.index,
  });

  @override
  State<TalbiyahScreen> createState() => TalbiyahScreenState();
}

class TalbiyahScreenState extends State<TalbiyahScreen> {
  List talbiyah = [
    'Tälbia aitu',
    'Täkbır aitu',
    'Tählil aitu',
    'Mekke mükärramağa kırgen sätte',
  ];
  List containersText = [
    '''Oqyluy: Läbbäikal-lahummä läbbäik. Läbbäikä lää şäriikä läkä läbbäik. İnnäl hämdä uän-ni‘mätä läkä uäl mulkä lää şäriikä läk.
Mağynasy: Alla tağalam! Şaqyruyñdy qabyl alyp kelıp otyrmyn! Būiryğyña moiynsūnamyn! Barlyq maqtaular men nyğmetter şübäsız sağan tän. Nyğmet te senıkı, mülık te senıkı! Senıñ eş serıgıñ joq!''',
    '''Oqyluy: Allahu äkbäru Allahu äkbär. Lää iläähä illallahu uällahu äkbär. Allahu äkbäru uä lillähil hämd.
Mağynasy: Alla ūlyq! Alla ūlyq! Alladan basqa täñır joq! Alla ūlyq! Ūlyq tek qana Alla jäne barlyq maqtau soğan tän!''',
    '''Oqyluy: Lää iläähä illallahu uähdähu lää şäriikä lähu, lähul-mulku uä lähul-hämdu uä huuä ‘alä kulli şäiin qadiir.
Mağynasy: Alladan basqa täñır joq. Ol jalğyz. Serıgı joq. Mülık sonykı. Maqtaular soğan ğana tän. Onyñ barlyq närsege küşı jetedı.''',
    '''Oqyluy: Allahummä häz ä harämukä fäharrim lähmii uä dämmii uä ‘aź mii ‘alän-näär. Allahummä ääminnii min ‘az ääbikä iäumä täb‘as u ‘ibäädäkä uäj‘alnii min äuliäikä uä ähli t́ a‘atikä.
Mağynasy: Alla tağalam! Būl jer senıñ qolsūğylmaityn haram aimağyñ sanalady. Osy jerdı haram qylğanyñ sekıldı menıñ de denemdı tozaq otyna haram qyla gör! Qūldaryñdy ölgennen soñ qaita tırıltetın qiamet künı menı azabyñnan qūtyluşylardan qyl. Menı Özıñnıñ dostaryñnyñ sanatynan jäne Özıñe moiynsūnuşylardan ete gör!''',
  ];
  List arabicImage = [
    'assets/images/png/first.png',
    'assets/images/png/second.png',
    'assets/images/png/third.png',
    'assets/images/png/fourth.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomAppBar(title: 'Ihram'),
                const ColumnSpacer(2),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => CustomLessonButton(
                      title: "${talbiyah[index]}",
                      onTap: () {},
                      check: false,
                      ifCheckBoxExist: index == 3 ? true : false,
                      onContainerTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            // <-- Rounded
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(16),
                              child: SizedBox(
                                height: 360,
                                child: SingleChildScrollView(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 130,
                                              left: 130,
                                              bottom: 20),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.grayColor,
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            height: 3,
                                          ),
                                        ),
                                        Text(
                                          talbiyah[index],
                                          style: TextStyles.black600(context),
                                        ),
                                        Text(
                                          containersText[index],
                                          style:
                                              TextStyles.black400Fs16(context),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(16),
                                          child: Image.asset(
                                            arabicImage[index],
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    separatorBuilder: (context, index) =>
                        const ColumnSpacer(0.8),
                    itemCount: talbiyah.length,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
