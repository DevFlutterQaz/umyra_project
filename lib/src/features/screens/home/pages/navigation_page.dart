import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/navigation_content.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: 'Navigation'),
            const ColumnSpacer(2),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => const NavigationContent(),
                separatorBuilder: (context, index) => const ColumnSpacer(0.8),
                itemCount: 7,
              ),
            ),
            const ColumnSpacer(0.8)
          ],
        ),
      ),
    );
  }
}
