import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_umra_button.dart';

class UmraScreen extends StatelessWidget {
  const UmraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(GetGuids()),
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
              if (state is GuidsLoading) {
                return const Center(child: CircleLoader());
              } else if (state is GuidsSuccess) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ColumnSpacer(5),
                      const CustomAppBar(title: 'How to perform Umra'),
                      const ColumnSpacer(2),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                onTap: () =>
                                    context.router.push(UmraDetailScreenRoute(
                                      id: state.data[index].id ?? '',
                                      title: state.data[index].title ?? 'Title',
                                    )),
                                child: CustomUmraButton(
                                  title: state.data[index].title ?? 'Title',
                                )),
                            separatorBuilder: (context, index) =>
                                const ColumnSpacer(0.8),
                            itemCount: state.data.length - 1,
                          ),
                        ),
                      )
                    ],
                  ),
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
