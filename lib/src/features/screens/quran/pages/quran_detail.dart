import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_arab_quran.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_quran.dart';
import 'package:umyra/src/features/screens/quran/widgets/sure_widget.dart';

class QuarnDetailScreen extends StatelessWidget {
  final Surah quranData;
  final SurahArab quranArabData;
  const QuarnDetailScreen({
    super.key,
    required this.quranData,
    required this.quranArabData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(title: quranData.englishName),
              const ColumnSpacer(2),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => SureWidget(
                    arabName: quranArabData.ayahs[index].text,
                    description: quranData.ayahs[index].text,
                    numberSura: quranData.ayahs[index].numberInSurah,
                    index: index,
                    audio: quranArabData.ayahs[index].audio,
                  ),
                  separatorBuilder: (context, index) => const ColumnSpacer(0.8),
                  itemCount: quranData.ayahs.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
