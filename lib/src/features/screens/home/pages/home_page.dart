import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/logic/data/local/local.dart';
import 'package:umyra/src/features/screens/home/widgets/come_event.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_home_button.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_status_time.dart';
import 'package:umyra/src/features/screens/home/widgets/umra_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(HomeData()),
      child: Scaffold(
        body: BlocBuilder<TimeBloc, TimeState>(
          builder: (context, state) {
            if (state is HomeSuccess) {
              return SafeArea(
                child: Container(
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 19, vertical: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const ComeEvent(),
                          const ColumnSpacer(1.5),
                          StatusTimeCustomWidget(
                              namazData: state.namazTimeData),
                          const ColumnSpacer(1),
                          Text('Umra',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.whiteColor)),
                          const ColumnSpacer(1.2),
                          UmraButton(
                              id: 1,
                              onTap: () => context.router
                                  .push(const UmraCourseScreenRoute())),
                          const ColumnSpacer(0.8),
                          UmraButton(
                              id: 2,
                              onTap: () =>
                                  context.router.push(const UmraScreenRoute())),
                          const ColumnSpacer(2),
                          AlignedGridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: Local.mainButton.length,
                            itemBuilder: (context, index) => CustomHomeButtom(
                              onTap: () => homeMainNavigate(
                                  context, Local.mainButton[index].id),
                              image: Local.mainButton[index].image,
                              title: Local.mainButton[index].title,
                            ),
                          ),
                          const ColumnSpacer(2),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else if (state is HomeLoading) {
              return const Center(child: CircleLoader());
            } else if (state is HomeFaile) {
              return Center(child: Text(state.message));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  void homeMainNavigate(BuildContext context, int id) {
    id == 2 ? context.router.push(const TasbihScreenRoute()) : null;
    id == 3 ? context.router.push(const BookScreenRoute()) : null;
    id == 4 ? context.router.push(const NavigationScreenRoute()) : null;
    id == 5 ? context.router.push(const NamazScreenRoute()) : null;
    id == 6 ? context.router.push(const CalendarScreenRoute()) : null;
  }
}
