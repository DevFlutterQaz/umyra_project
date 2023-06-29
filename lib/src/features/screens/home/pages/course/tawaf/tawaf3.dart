import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/pages/course/tawaf/tawaf_data.dart';

class CourseTawaf3Page extends StatefulWidget {
  final String title;
  final List list;
  final int index;
  final String subTitle;
  const CourseTawaf3Page({
    super.key,
    required this.title,
    required this.list,
    required this.index,
    required this.subTitle,
  });

  @override
  State<CourseTawaf3Page> createState() => _CourseTawaf3PageState();
}

class _CourseTawaf3PageState extends State<CourseTawaf3Page> {
  final PageController pageViewController = PageController(initialPage: 0);
  int activePage = 0;
  List innew = [
    container1(
        'Субхаан-Аллаһи уәл хәмду лиллаһи уә лә иләәһә иллаллаһу уаллаһу әкбәр. Уә лә хәулә уә лә қууәтә иллә билләһил-‘алийил ‘аз́ иим. Уәс́ -с́ аләту уәс-сәләәму ‘алә рәсуулилләһи с́ аллаллаһу ‘аләйһи уә сәлләм. Аллаһуммә иимәнән бикә уә тәс́ дииқан би китәәбикә уә уәфә-ән би ‘аһдикә уәт-тибә‘ан лисуннәти нәбийикә уә хабибикә мухәммәдин с́ аллаллаһу ‘аләйһи уә сәлләм. Рабби-шрәхлии садрии. Уә иәссир лии әмрии. Уәхлул ‘уқдәтә мил-лисәнии. Рабби иннии лимә әнзәлтә иләйиә мин хайрин фәқиир. Аллаһуммәж‘алһу хәжжән мәбруурән уә з ̣әнбән мәғфуурән уә сә‘иән мәшкууран. Аллаһуммә иннии әс-әлукәл ‘афуә уәл ‘иффәтә уәл му‘афәтәд-дәимәтә фид-диини уәддуниә уәл әәхирәти уәл фәузә билжәннәти уән-нәжәтә минән-нәәр. Аллаһуммә уәффиқнә илә мә тухиббуһу уә тәрд́ аһу.'),
    container1(
        ' Алланы бүкіл кемшілік атаулыдан пәктеймін. Барлық мақтаулар Аллаға тән. Алладан басқа тәңір жоқ. Алла өте үстем. Күш пен қуат, ұлылық пен шексіз құдірет иесі тек Алла! Сансыз салауат пен сәлем Алланың елшісі хазірет Мұхаммедке (с.ғ.с.) болсын! Алла тағалам, саған иман келтіріп, кітабыңды растап, берген сөзімізді орындау үшін және сүйікті пайғамбарың хазірет Мұхаммедтің (с.ғ.с.) сүннетіне мойынсұнып құзырыңа келіп отырмын. Уа, Раббым! Көкірегімді аш, істерімді жеңіл қыл және мына тілімнің күрмеуін шеш Уа, Раббым! Маған сыйлайтын барлық нығметтеріңе мұқтажбын. Алла тағалам! Қажылығымызды, ұмрамызды қабыл ет. Күнәларымызды кешір. Талабымызды арттырып, еңбегімізді жандыр.Алла тағалам! Сенен дініммен өмір сүруді, осы өмірімде және ақыреттік өмірімде тұрақты тыныштық, кешірім мен амандық тілеймін. Жаннатқа кіруге лайық және тозақ азабынан құтылуды сұраймын. Өзің жақсы көретін және өзің разы болатын істерді істеуге жеткіз.'),
  ];
  List emen = [];
  @override
  Widget build(BuildContext context) {
    emen = widget.list;
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: CustomAppBar(title: widget.title),
            ),
            const ColumnSpacer(2),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Expanded(
                child: ListView(
                  children: [
                    Text(
                      widget.subTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: AppColors.whiteColor),
                    ),
                    const ColumnSpacer(2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            height: 350,
                            decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                controller: pageViewController,
                                onPageChanged: (curIndex) {
                                  setState(() {
                                    activePage = curIndex;
                                  });
                                },
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return innew[index % innew.length];
                                }),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                innew.length,
                                (curIndex) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: InkWell(
                                    onTap: () {
                                      pageViewController.animateToPage(curIndex,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: activePage == curIndex
                                          ? AppColors.contentBlue
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ColumnSpacer(2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Йемен тұсы мен қара тас аралығында мына дұға оқылады:',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                    const ColumnSpacer(2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            height: 350,
                            decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                controller: pageViewController,
                                onPageChanged: (curIndex) {
                                  setState(() {
                                    activePage = curIndex;
                                  });
                                },
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return emen[index % emen.length];
                                }),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                emen.length,
                                (curIndex) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: InkWell(
                                    onTap: () {
                                      pageViewController.animateToPage(curIndex,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: activePage == curIndex
                                          ? AppColors.contentBlue
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ColumnSpacer(2),
                    GestureDetector(
                      onTap: () {
                        widget.index == 6
                            ? context.router.pop()
                            : context.router.replace(CourseTawaf3PageRoute(
                                title: 'Tawaf',
                                index: widget.index + 1,
                                list: TawafData().list[widget.index],
                                subTitle: TawafData().title[widget.index],
                              ));
                      },
                      child: Padding(
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
                    ),
                    const ColumnSpacer(2),
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

Widget container1(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    decoration: BoxDecoration(
        color: AppColors.whiteColor, borderRadius: BorderRadius.circular(24)),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}
