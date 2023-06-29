import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

class CourseTalbiah3Page extends StatelessWidget {
  const CourseTalbiah3Page({super.key});

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
              child: CustomAppBar(title: 'Тәхлил айту'),
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
                      child: Image.asset(AppImages.talbiah3),
                    ),
                    const ColumnSpacer(1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Okylyyyy: laa ilahe uahdahe la shari lah, lah-mulku ua lah-hamdu ua sua ala kulli shayin Kadyr.',
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
                        'Meaning: there is no God but Allah. He is alone. There is no companion. The property is so. Compliments are unique to him. He has the power to do everything.',
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
