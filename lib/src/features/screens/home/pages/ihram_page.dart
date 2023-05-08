import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/text_styles.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_lesson_button.dart';

import '../../../../core/resources/app_colors.dart';

class IhramScreen extends StatefulWidget {
  final int? index;
  const IhramScreen({
    super.key,
    required this.index,
  });

  @override
  State<IhramScreen> createState() => _IhramScreenState();
}

class _IhramScreenState extends State<IhramScreen> {
  List ihram = [
    'Daret alu nemese Ğūsyl qūiynu',
    'İhram kiu',
    'İhramnyñ şekteulerı',
    'İhram namazy',
    'Ūmrağa niet',
  ];
  List containersText = [
    's',
    '''Er kısıler: Eñ äuelı syrtqy kiımderdı şeşıp, ihramnyñ belden tömengı jağyn jabatyn bölıgın tüsıp ketpeitındei etıp bailaidy (izar). Eger qalasa ihramdy ūstap tūratyn belbeu de tağuğa bolady. Osydan soñ ışkiımderın şeşedı. Eñ soñynan ihramnyñ denenıñ joğarğy, keude jaqty jabatyn bölıgın iyqtan
tömen qarai jabady (rida). Al aiaqqa aldyñğy jağy aşyq süiretpe nemese aldy-arty aşyq aiaqkiım kiedı. Osylaişa osy ekı bölıkten tūratyn ihram kiımınen basqa denede eş närse qalmaidy. Basy aşyq, al aiağy şūlyqsyz bolady. Sağat, közıldırık, jüzık, beldık, sömke sekıldı qosymşa zattar qoldanudyñ äbestıgı joq. Äielder: Kiımnıñ qandai da bır tüste ne modelde boluy şart emes. Qoldary men bet-jüzınen basqa jerınıñ barlyğyn jauyp tūratyndai ärı dene bıtımın bıldırmeitındei keñdıkte, sän-äşekeisız qarapaiym köilek kiedı. Bastaryna jabatyn jamylğylary men aiaqkiımderı ädettegıdei bolady. Äielder ihram merzımı kezınde bet-jüzderın jappaidy.''',
    '''1. Pasyqtyq: Allanyñ būiryğy men tyiym salğan
närselerıne moiynsūnbau;
2. Müstähjan (ädepsızdık): Erı men äielı arasynda bolatyn jynystyq qatynas, süiu, aimalau, tağy basqa osyğan ūqsas narseler;
3. Ūrysu, janjaldasu, balağattau, t.s.s.
4. Er kısılerdıñ tıgısı bar kiım kiuı;
5. Şaşyn qysqartu;
6. İıssu sebu;
7. Tyrnaq alu;
8. Er kısınıñ basyn jabuy;
9. Ağaş syndyru;
10. Şūlyq nemese käduılgı aiaqkiım kiu. Alaida tobyqty jappaityn süiretpe sekıldı qandai da bır aiaqkiım kiuge rūqsat etıledı;
11. Ūiyqtağanda bettı jäne aiaqty bürkep jabu
İhramğa kırgen kısıge mübah (Mübah – jasaluy men jasalmauynda dıni jağynaneşqandai tosqauyl bolmağan, iağni jauapkerdıñerkındegı ıs-äreketter. Mäselen, tamaq ışu, ūiyqtau,t.b.) sanalatyn jaittar:)sanalatyn jaittar:
1. İıs sabyn nemese susabyn (şampün), tıs pastasy sekıldı iısı bar zattardy qoldanbai tazaru ne salqyndau maqsatynda juynu;
2. Tıs jūldyru;
3. Synğan süiektı emdeu;
4. Basty ne denenı qasu. Alaida şaş tüspeitındei därejede jeñıl ğana qasynu kerek. Eger şaş tüsetın bolsa, sadaqa berıledı;
5. Kebıs kiu, jüzık, syrğa, qol sağaty, aqşa, qūjat sekıldı närselerdı salyp alu üşın ämian tağuğa rūqsat etıledı.
6. İhramdy auystyru nemese tazalau üşın juu mäkrüh sanalady.''',
    '''Käduılgı ekı räkattyq namaz ıspettı ihram namazy oqylady. Alğaşqy räkağatta fatiha men käfirun, al ekınşı räkağatta fatiha men yqylas sürelerı oqylady. Eger ol sürelerdı bılmese, onda bıletın basqa süresın oquyna bolady.''',
    '''Oqyluy: Allahummä innii uriidul ‘umrätä fäiässirhä lii uä täqabbälhä minnii.
Mağynasy: Alla tağalam! Ūmra jasauğa niettendım. Ony mağan jeñıldete gör jäne qabyl al!

Niettı tılmen aitu – mūstahap.''',
  ];
  List actionName = [
    'f',
    'Ihram',
    'İhramğa kırgen son tyiym salynatyn närseler',
    'İhram namazy',
    'Ūmrağa niet',
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
                      title: "${ihram[index]}",
                      onTap: () {},
                      check: false,
                      ifCheckBoxExist: true,
                      onContainerTap: () {
                        index == 0
                            ? null
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
                                              Text(
                                                actionName[index],
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
                    itemCount: ihram.length,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
