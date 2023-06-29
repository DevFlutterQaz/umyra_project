import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/widgets/zamok_btn.dart';

class CourseTalbiyahPage extends StatelessWidget {
  const CourseTalbiyahPage({super.key});

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
              child: CustomAppBar(title: 'Talbiyah'),
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
                        'Talbia is a Sunnah prayer that is said before entering the ihram and is repeated abundantly during the time of the ihram. "I dont know," he said.,taqbir, takhlil and Salavat continue their way in a state where Sharip is spoken aloud (at a level that women can only hear themselves).',
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
                      title: 'Тәлбия айту',
                      isOpen: true,
                      onTap: () =>
                          context.router.push(const CourseTalbiah1PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 2,
                      title: 'Тәкбір айту',
                      isOpen: false,
                      onTap: () =>
                          context.router.push(const CourseTalbiah2PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 3,
                      title: 'Тәхлил айту',
                      isOpen: false,
                      onTap: () =>
                          context.router.push(const CourseTalbiah3PageRoute()),
                    ),
                    const ColumnSpacer(1),
                    ZamokButton(
                      id: 4,
                      title: 'Мекке мүкәррамаға кірген сәтте',
                      isOpen: false,
                      onTap: () =>
                          context.router.push(const CourseTalbiah4PageRoute()),
                    ),
                    const ColumnSpacer(2),
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
