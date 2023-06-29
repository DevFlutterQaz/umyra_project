import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/home/widgets/custom_umra_button.dart';

class UmraScreen extends StatelessWidget {
  const UmraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'How to perform Umra'),
              const ColumnSpacer(2),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () =>
                          context.router.push(const UmraDetailScreenRoute()),
                      child: const CustomUmraButton(
                        title: 'How to Perform Umra',
                      )),
                  separatorBuilder: (context, index) => const ColumnSpacer(0.8),
                  itemCount: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
