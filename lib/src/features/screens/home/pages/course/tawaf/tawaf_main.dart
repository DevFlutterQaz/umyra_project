import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/pages/course/tawaf/tawaf_data.dart';
import 'package:umyra/src/features/screens/home/widgets/zamok_btn.dart';

class CouseTawafPage extends StatelessWidget {
  const CouseTawafPage({super.key});

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
              child: CustomAppBar(title: 'Tawaf'),
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
                        'Tauap begins with the sacred Black Stone and ends with the Black Stone. In the first three laps of the umra tauab, he makes a Symbol (Symbol: running with short steps, shaking his shoulders). Women do not make symbols). It is the opening of the right shoulder of people wearing ibyba – ihram when making a niche. To do this is sunnah',
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
                      title: 'Қағбаны көрген кезде',
                      isOpen: true,
                      onTap: () =>
                          context.router.push(const CourseTawaf1PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 2,
                      title: 'ТАУАП ЖАСАУҒА НИЕТТЕНУ',
                      isOpen: true,
                      onTap: () =>
                          context.router.push(const CourseTawaf2PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Container(
                        height: 310,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage(AppImages.qq),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const ColumnSpacer(4),
                    GestureDetector(
                      onTap: () =>
                          context.router.push(CourseTawaf3PageRoute(title: 'Tawaf1', index: 1, list: TawafData().list[0], subTitle: TawafData().title[0])),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.whiteColor,
                            boxShadow: kElevationToShadow[3]),
                        child: Padding(
                          padding: const EdgeInsets.all(80.0),
                          child: Text(
                            'Start',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                    color: AppColors.contentBlue,
                                    fontWeight: FontWeight.w700,
                                    shadows: [
                                  const Shadow(
                                    offset: Offset(0, 6),
                                    blurRadius: 70.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    const ColumnSpacer(2),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(
                    //       horizontal: MediaQuery.of(context).size.width / 4),
                    //   child: Container(
                    //     decoration: const BoxDecoration(
                    //         color: AppColors.grayColor2,
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(25))),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(12),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Text(
                    //             'DONE',
                    //             style: Theme.of(context)
                    //                 .textTheme
                    //                 .headlineSmall
                    //                 ?.copyWith(
                    //                   color: AppColors.contentBlue4,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //           ),
                    //           const RowSpacer(1),
                    //           SvgPicture.asset(AppSvgImages.zamokClose)
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const ColumnSpacer(2),
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
