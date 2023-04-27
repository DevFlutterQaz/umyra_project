import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_event.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'Calendar'),
              const ColumnSpacer(2),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const CustomEventWidget(),
                  separatorBuilder: (context, index) => const ColumnSpacer(0.8),
                  itemCount: 10,
                ),
              ),
              const ColumnSpacer(0.8),
            ],
          ),
        ),
      ),
    );
  }
}
