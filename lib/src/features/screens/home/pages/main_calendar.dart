import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';

class MainCalendarPage extends StatelessWidget {
  const MainCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(GetTimeByMonth()),
      child: Scaffold(
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
          child: BlocBuilder<TimeBloc, TimeState>(
            builder: (context, state) {
              if (state is TimeByMonthLoading) {
                return const Center(child: CircleLoader());
              } else if (state is TimeByMonthSuccess) {
                return Column(
                  children: [
                    const ColumnSpacer(5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () => context.router.pop(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: kElevationToShadow[3],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: AppColors.contentBlue,
                                ),
                              ),
                            ),
                          ),
                          const RowSpacer(1),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Calendar',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.whiteColor,
                                      shadows: [
                                    const Shadow(
                                      offset: Offset(0, 6),
                                      blurRadius: 30.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ]),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () => context.router
                                  .push(const CalendarScreenRoute()),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.whiteColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: SvgPicture.asset(
                                          AppSvgImages.navigation),
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const ColumnSpacer(2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.contentBlue2,
                          boxShadow: kElevationToShadow[3],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                CupertinoIcons.dot_square,
                                color: AppColors.whiteColor,
                              ),
                              Text(
                                'ТАҢ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                              Text(
                                'КҮН',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                              Text(
                                'БЕС.',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                              Text(
                                'ЕКІ.',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                              Text(
                                'ШАМ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                              Text(
                                'ҚҰП.',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const ColumnSpacer(2),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: Expanded(
                          child: ListView.separated(
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Container(
                            decoration: BoxDecoration(
                              color: index >= 28
                                  ? AppColors.whiteColor
                                  : AppColors.grayColor2,
                              boxShadow: kElevationToShadow[3],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    (index + 1).toString(),
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    state.data[index].fajr,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    state.data[index].sunrise,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    state.data[index].dhuhr,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    state.data[index].asr,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    state.data[index].maghrib,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    state.data[index].isha,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        separatorBuilder: (context, index) =>
                            const ColumnSpacer(2),
                        itemCount: state.data.length,
                      )),
                    ),
                    const ColumnSpacer(2),
                  ],
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
