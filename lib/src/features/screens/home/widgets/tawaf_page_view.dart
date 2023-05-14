import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/features/screens/home/pages/first_page_tawaf.dart';
import 'package:umyra/src/features/screens/home/pages/second_ainalym/main_page_secondainalym.dart';
import 'package:umyra/src/features/screens/home/pages/second_page_tawaf.dart';
import 'package:umyra/src/features/screens/home/pages/third_page_tawaf.dart';

import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/column_spacer.dart';

import '../pages/third_ainalym/main_page_thirdainalym.dart';

class TawafPageViewScreen extends StatefulWidget {
  const TawafPageViewScreen({super.key});

  @override
  State<TawafPageViewScreen> createState() => _TawafPageViewScreenState();
}

class _TawafPageViewScreenState extends State<TawafPageViewScreen> {
  final PageController _controller = PageController(initialPage: 0);

  // the index of the current page
  late int _activePage = 0;
  late int curPage = 0;

  final List<Widget> _pages = [
    const FirstPageTawafScreen(),
    const SecondPageTawafScreen(),
    const ThirdPageTawafScreen(),
  ];
  String iemen = "İemen tūsy men qara tas aralyğynda myna dūğa oqylady:";
  String text3 =
      '''Rabbänä äätinä fid-duniä häsänätäu uä fil äähiräti häsänätäu uä qinä ‘az äbän-näär. Uä ädhilnäl jännätä mä‘al äbrari iä ‘aziizu iä ğaffäru iä rabbäl-‘alämiin''';
  String audarmaText3 =
      '''Ua, Rabbymyz! Bızge osy düniede jäne aqyrette jaqsylyğyñdy ber, jahannam azabynan saqta. Bızdı dındar salih qūldaryñmen bırge jannatyña kırgız. Ua, dara küştıñ iesı! Ua, künälardy molynan keşıruşı! Ua, bükıl ğalamnyñ ūly Jaratuşysy! Osy lardy özıñnen ğana sūraimyz.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                setState(() {
                  curPage = value;
                });
              },
              children: [
                PageView.builder(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      _activePage = page;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _pages[index % _pages.length];
                  },
                ),
                const MainPageSecondAinalym(),
                const MainPageThirdAinalym(),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 40,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      _pages.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                _controller.animateToPage(index,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                                radius: curPage == 0 ? 5 : 0,
                                backgroundColor: _activePage == index
                                    ? AppColors.darkBlue
                                    : Colors.grey,
                              ),
                            ),
                          )),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 200,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.darkBlue),
                  ),
                  child: _activePage == 2
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                iemen,
                                style: TextStyles.black600(context),
                                textAlign: TextAlign.center,
                              ),
                              const ColumnSpacer(1),
                              Text(
                                audarmaText3,
                                style: TextStyles.black400Fs16(context),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      : Column(
                          children: [
                            Text(
                              iemen,
                              style: TextStyles.black600(context),
                              textAlign: TextAlign.center,
                            ),
                            const ColumnSpacer(1),
                            Text(
                              text3,
                              style: TextStyles.black400Fs16(context),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
