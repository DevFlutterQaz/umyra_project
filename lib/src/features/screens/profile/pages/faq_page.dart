import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/profile/widgets/faq_cards.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const ColumnSpacer(1),
              const CustomAppBar(title: 'FAQ'),
              const SizedBox(height: 16),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const ColumnSpacer(0.8);
                },
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return const FaqCards();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
