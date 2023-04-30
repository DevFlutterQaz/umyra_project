import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/features/screens/quran/widgets/outline_exp_tile.dart';

import '../../../../core/widgets/arrow_button.dart';

class DugalarScreen extends StatelessWidget {
  const DugalarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ArrowButton(
                    onPressed: () => context.router.pop(),
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  'Дұғалар',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 34),
          ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    OutlineExpansionTile(),
                  ],
                );
              })
        ],
      )),
    );
  }
}
