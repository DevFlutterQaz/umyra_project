import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_loader.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/quran/logic/bloc/quran_bloc.dart';
import 'package:umyra/src/features/screens/quran/widgets/custom_quran_button.dart';

class MainQuranScrenn extends StatelessWidget {
  const MainQuranScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<QuranBloc>()..add(GetQuranData()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quran',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        body: BlocBuilder<QuranBloc, QuranState>(
          builder: (context, state) {
            if (state is QuranSuccess) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 8),
                child: ListView.separated(
                  itemBuilder: (context, index) => CustomQuranButton(
                    onTap: () {
                      context.router.push(
                        QuarnDetailScreenRoute(
                          quranData: state.quranData.data.surahs[index],
                          quranArabData: state.quranArabData.data.surahs[index],
                        ),
                      );
                    },
                    title: state.quranData.data.surahs[index].englishName,
                    city: state.quranArabData.data.surahs[index].revelationType,
                    numberSura:
                        state.quranArabData.data.surahs[index].ayahs.length,
                    numberOfSurahs:
                        state.quranArabData.data.surahs[index].number,
                  ),
                  separatorBuilder: (context, index) => const ColumnSpacer(0.8),
                  itemCount: state.quranData.data.surahs.length,
                ),
              );
            } else if (state is QuranLoading) {
              return const Center(child: CircleLoader());
            } else if (state is QuranFailed) {
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
