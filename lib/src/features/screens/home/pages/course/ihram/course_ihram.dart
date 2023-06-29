import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/widgets/zamok_btn.dart';

class CouseTeoreticalPage extends StatelessWidget {
  const CouseTeoreticalPage({super.key});

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
              child: CustomAppBar(title: 'Ihram'),
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
                      child: Text(
                        '1. A Muslim enters into the state of Ihram at the place specified by Sharia, and shall abstain from the Ihram prohibitions',
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
                        '2.Ihram is the intention to enter into the Umrah, and the intention is in the heart, but it is desirable to pronounce the intention out loud by saying: "Labbaik lähumma umratan".',
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
                        '3.Anas (Allah be pleased with him) reported: I heard Allahs Messenger (st) pronouncing Talbiya for both simultaneously, Talbiya for Umrah and Hajj. Talbiya for Uwra and Hajj (he performed both Hajj and Umra as a Qarin). In another version words are: I heard Allahs Messenger (st) pronouncing Talbiya for Umra and Hajj (simultaneously)." Sahih Muslim (1251)',
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
                    ZamokButton(
                      id: 1,
                      title: 'Дәрет алу немесе Ғұсыл құйыну',
                      isOpen: true,
                      onTap: () => context.router
                          .push(const CourseIhramDetailPageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 2,
                      title: 'Ихрам кию',
                      isOpen: false,
                      onTap: () =>
                          context.router.push(const CourseIhram2PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 3,
                      title: 'Ихрам намазы',
                      isOpen: false,
                      onTap: () =>
                          context.router.push(const CourseIhram3PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 4,
                      title: 'Ұмраға ниет',
                      isOpen: false,
                      onTap: () =>
                          context.router.push(const CourseIhram4PageRoute()),
                    ),
                    const ColumnSpacer(2),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 4),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.grayColor2,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'DONE',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                      color: AppColors.contentBlue4,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const RowSpacer(1),
                              SvgPicture.asset(AppSvgImages.zamokClose)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const ColumnSpacer(2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
