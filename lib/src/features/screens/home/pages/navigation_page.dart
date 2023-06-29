import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/widgets/navigation_content.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(NavigationData()),
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
              ])),
          child: BlocBuilder<TimeBloc, TimeState>(
            builder: (context, state) {
              if (state is NavigationSuccess) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: Column(
                      children: [
                        const CustomAppBarBlue(
                          title: 'Navigation',
                          color: AppColors.whiteColor,
                        ),
                        const ColumnSpacer(2),
                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) => NavigationContent(
                                navigationData: state.navigationData[index]),
                            separatorBuilder: (context, index) =>
                                const ColumnSpacer(0.8),
                            itemCount: 1,
                          ),
                        ),
                        const ColumnSpacer(0.8),
                      ],
                    ),
                  ),
                );
              } else if (state is NavigationLoading) {
                return const Center(
                  child: CircleLoader(),
                );
              } else if (state is NavigationFailed) {
                return Center(
                  child: Text(state.message),
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
