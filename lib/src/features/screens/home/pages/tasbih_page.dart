import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/widgets/tasbih_content.dart';

class TasbihScreen extends StatelessWidget {
  const TasbihScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(TasbihData()),
      child: Scaffold(
        body: BlocBuilder<TimeBloc, TimeState>(
          builder: (context, state) {
            if (state is TasbihSuccess) {
              return Container(
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
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ColumnSpacer(5),
                      const CustomAppBarBlue(
                          title: 'Tasbih', color: Colors.white),
                      const ColumnSpacer(2),
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (contex, index) => TasbihContent(
                              index: index,
                              length: state.tasbihData.length,
                              tasbihData: state.tasbihData[index]),
                          separatorBuilder: (context, index) =>
                              const ColumnSpacer(0.8),
                          itemCount: state.tasbihData.length,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else if (state is TasbihLoading) {
              return const Center(child: CircleLoader());
            } else if (state is TasbihFailed) {
              return Center(child: Text(state.message));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
