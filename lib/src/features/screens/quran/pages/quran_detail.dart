import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_arab_quran.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_quran.dart';
import 'package:umyra/src/features/screens/quran/widgets/sure_widget.dart';

class QuarnDetailScreen extends StatefulWidget {
  final Surah quranData;
  final SurahArab quranArabData;
  const QuarnDetailScreen({
    super.key,
    required this.quranData,
    required this.quranArabData,
  });

  @override
  State<QuarnDetailScreen> createState() => _QuarnDetailScreenState();
}

class _QuarnDetailScreenState extends State<QuarnDetailScreen> {
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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: CustomAppBar(title: widget.quranArabData.englishName),
              ),
              const ColumnSpacer(2),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => SureWidget(
                    arabName: widget.quranArabData.ayahs[index].text,
                    description: widget.quranData.ayahs[index].text,
                    numberSura: widget.quranData.ayahs[index].numberInSurah,
                    index: index,
                    audio: widget.quranArabData.ayahs[index].audio,
                  ),
                  separatorBuilder: (context, index) => const ColumnSpacer(1.5),
                  itemCount: widget.quranData.ayahs.length,
                ),
              ),
              const ColumnSpacer(2),
            ],
          ),
        ),
      ),
    );
  }
}
