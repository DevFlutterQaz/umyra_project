import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/features/app/router/app_router.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/custom_lesson_button.dart';

class TawafScreen extends StatefulWidget {
  const TawafScreen({super.key});

  @override
  State<TawafScreen> createState() => _TawafScreenState();
}

class _TawafScreenState extends State<TawafScreen> {
  List tawaf = [
    'Qağbany körgen kezde',
    'TAUAP JASAUĞA NİETTENU',
    'Tawaf',
    'fd',
  ];
  List containersText = [
    '''Oqyluy: Allahummä zid häz äl bäitä täşriifäu uä tä‘ź iimäu uä täkriimäu uä mähääbätäu uä zid män şärräfähu uä kärrämähu uä mimmän häjjähu äui‘tämärähu täşriifäu uä täkriimäu uä tä‘ź iimäu uä birrän. Allahummä äntäs-säläämu uä minkäs-säläämu fähäiinä rabbänä bissälääm. Rabbänä uä ädhilnäl jännätä dääräs-säläämi täbääräktä tä‘aläitä iä ź äljjäläli uäl ikram.

Mağynasy: Alla tağalam! Myna Qağbanyñ abyroi-bedelın, qūrmetı men aibynyn arttyra gör! Qajylyq ne ūmra jasauşylardyñ da abyroi-bedelın, qūrmetın, jaqsylyqtaryn arttyra tüs! Alla tağalam! Sälem – Sensıñ! Amandyq pen salamattyq tek Sende. Ūly Jaratuşymyz! Bızge tynyştyqta ömır süruımızdı näsıp ete gör. Senıñ mekenıñ, tynyştyq pen beibıtşılık otauy bolğan jannatyña kıruımızdı näsıp et. Ūlylyq pen qūrmetke laiyq Alla tağalam! Sen barlyq närseden ūlysyñ ärı joğarysyñ!

Osydan keiın Alladan ne tılegımız kelse sony tılep, nemese neden saqtauyn qalasaq, sodan saqtauyn sūrap dūğa jasaimyz''',
    '''Oqyluy: Allahummä innii uriidu t́ auäfä ‘umräti fäiässirhä li uä täqabbälhä minnii.
Mağynasy: Alla tağalam! Tek Sen üşın ūmra tauabyn jasauğa niettendım. Ony mağan jeñıldet jäne qabyl ala gör!

Tauapqa niet etken soñ «Bismillahi Allahu akbar» dep qara tasqa sälem beredı. Osydan keiın tauapty bastaidy (Osylai sälemdesu tauaptyñ ärbır ainalymynda qaitalanyp otyrady). Eger mümkındık bolyp jatsa, basqa kısılerge kedergı jasap, zianymyz timeitın bolsa, qara tasty süiıp, sipauğa bolady. Sodan soñ tauap
bastalady.''',
    '''fd''',
    '''fd''',
  ];
  List arabicImage = [
    'assets/images/png/first2.jpg',
    'assets/images/png/second2.jpg',
    'assets/images/png/thir.png',
    'assets/images/png/fourt.png',
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
                      title: "${tawaf[index]}",
                      onTap: () {},
                      check: false,
                      ifCheckBoxExist: true,
                      onContainerTap: () {
                        index == 2
                            ? context.router
                                .push(const TawafPageViewScreenRoute())
                            : showModalBottomSheet(
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
                                                      color:
                                                          AppColors.grayColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  height: 3,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  child: Image.asset(
                                                    arabicImage[index],
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                tawaf[index],
                                                style: TextStyles.black600(
                                                    context),
                                              ),
                                              Text(
                                                containersText[index],
                                                style: TextStyles.black400Fs16(
                                                    context),
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
                    itemCount: tawaf.length,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
