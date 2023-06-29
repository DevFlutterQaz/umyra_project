import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:umyra/src/features/screens/home/widgets/expansion_question_answear.dart';

class UmraDetailScreen extends StatelessWidget {
  final String title;
  final String id;
  const UmraDetailScreen({super.key, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(GetGuidsDetail(id: id)),
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
              if (state is GuidsDetailLoading) {
                return const Center(child: CircleLoader());
              } else if (state is GuidsDetailSuccess) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ColumnSpacer(6),
                      CustomAppBar(title: title),
                      const ColumnSpacer(2),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: Expanded(
                            child: ListView.builder(
                          itemBuilder: (context, index) =>
                              ExpansionQuestionAnswear(
                            index: (index + 1).toString(),
                            question: state.data[index].question,
                            answer: state.data[index].answer
                                .toString()
                                .replaceAll('[', '')
                                .replaceAll(']', '')
                                .replaceAll('., ', '\n\n'),
                          ),
                          itemCount: state.data.length,
                        )),
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
