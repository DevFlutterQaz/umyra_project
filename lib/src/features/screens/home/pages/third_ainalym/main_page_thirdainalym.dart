import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/features/screens/home/pages/third_ainalym/secondpage_third_ainalym.dart';
import 'package:umyra/src/features/screens/home/pages/third_ainalym/thirdpage_third_ainalym.dart';

import 'firstpage_third_ainalym.dart';

class MainPageThirdAinalym extends StatefulWidget {
  const MainPageThirdAinalym({super.key});

  @override
  State<MainPageThirdAinalym> createState() => _MainPageThirdAinalymState();
}

class _MainPageThirdAinalymState extends State<MainPageThirdAinalym> {
  final PageController _controller = PageController(initialPage: 0);

  // the index of the current page
  late int _activePage = 0;

  final List<Widget> _pages = [
    const FirstPageThirdAinalymScreen(),
    const SecondPageThirdAinalymScreen(),
    const ThirdPageThirdAinalymScreen(),
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
                                radius: 5,
                                backgroundColor: _activePage == index
                                    ? AppColors.darkBlue
                                    : Colors.grey,
                              ),
                            ),
                          )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
