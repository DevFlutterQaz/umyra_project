import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/tasbih_content.dart';

class TasbihScreen extends StatelessWidget {
  const TasbihScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'Tasbih'),
              const ColumnSpacer(2),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (contex, index) => const TasbihContent(),
                  separatorBuilder: (context, index) => const ColumnSpacer(0.8),
                  itemCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
