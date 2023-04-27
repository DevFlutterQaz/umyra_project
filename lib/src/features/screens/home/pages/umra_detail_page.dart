import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/expansion_question_answear.dart';

class UmraDetailScreen extends StatelessWidget {
  const UmraDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'Ihram'),
              const ColumnSpacer(2),
              Container(
                height: MediaQuery.of(context).size.height / 3.7,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                        image: AssetImage(AppImages.islam), fit: BoxFit.cover)),
              ),
              const ColumnSpacer(2),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) =>
                    const ExpansionQuestionAnswear(),
                itemCount: 10,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
