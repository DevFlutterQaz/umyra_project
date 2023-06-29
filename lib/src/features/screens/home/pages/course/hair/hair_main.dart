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

class CouseHairPage extends StatelessWidget {
  const CouseHairPage({super.key});

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
              child: CustomAppBar(title: 'Hair shaving'),
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
                        'Hair shaving (Halq) and hair shortening (Taqsir) are terms commonly used in Islamic rituals, particularly during the pilgrimage (Hajj) and the Umrah, which is a voluntary pilgrimage to Mecca. These practices involve cutting or shaving a portion of the hair as part of a religious ceremony.',
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
                        'Halq (Shaving):\nHalq refers to completely shaving the head, usually done by men after completing the main rituals of Hajj or Umrah. It involves using a razor or electric shaver to remove all the hair from the scalp, resulting in a completely bald head. Shaving the head is considered a symbol of humility and purification, signifying the completion of the pilgrimage or Umrah.',
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
                        'Taqsir (Shortening):\nTaqsir involves cutting a small portion of the hair, typically about an inch or less, rather than completely shaving the head. This practice is usually performed by both men and women, and it is an acceptable alternative for those who do not wish to shave their heads entirely. The cut hair is then typically discarded or buried.\n Both Halq and Taqsir are acts of religious significance and are considered acts of worship. They are typically performed after completing the main rites of the Hajj or Umrah, such as circumambulating the Kaaba, walking between the hills of Safa and Marwa, and other obligatory rituals. The act of shaving or shortening the hair represents a spiritual renewal and the shedding of past sins, demonstrating a fresh start in the individuals religious journey.',
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
                      title: 'Шаш алу',
                      isOpen: true,
                      onTap: () =>
                          context.router.push(const CourseHair1PageRoute()),
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
