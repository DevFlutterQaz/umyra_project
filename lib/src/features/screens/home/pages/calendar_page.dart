import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_event.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(EventData()),
      child: Scaffold(
        body: BlocBuilder<TimeBloc, TimeState>(
          builder: (context, state) {
            if (state is EventSuccess) {
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ColumnSpacer(6),
                      const CustomAppBar(title: 'Calendar'),
                      const ColumnSpacer(2),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) => CustomEventWidget(
                                eventData: state.eventData[index]),
                            separatorBuilder: (context, index) =>
                                const ColumnSpacer(0.8),
                            itemCount: state.eventData.length,
                          ),
                        ),
                      ),
                      const ColumnSpacer(0.8),
                    ],
                  ),
                ),
              );
            } else if (state is EventLoading) {
              return const Center(child: CircleLoader());
            } else if (state is EventFailed) {
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
