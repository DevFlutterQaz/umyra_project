import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app/router/app_router.dart';
import 'bilim_cards.dart';

class BilimPageGridView extends StatelessWidget {
  const BilimPageGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        children: [
          BilimCards(
              onTap: () => context.router.push(const DugalarScreenRoute()),
              //onTap: () {},
              title: 'Дұғалар',
              subtitle: 'Күнделікті айтылатын дүғалар тізімі осында'),
          BilimCards(
              onTap: () => context.router.push(const ZikrScreenRoute()),
              //onTap: () {},
              title: 'Зікірлер',
              subtitle: 'Әр күнге арналған зікірлер тізімі осында'),
          BilimCards(
              // onTap: () {},
              onTap: () => context.router.push(const SuraScreenRoute()),
              title: 'Сүрелер',
              subtitle: 'Ең қысқа сүрелер тізімі осында'),
          BilimCards(
            //onTap: () {},
            onTap: () => context.router.push(const NamesScreenRoute()),
            title: 'Алланың  99 есімі',
            subtitle: '«Алланың 99 есімін жатқа білген жан - жәннаттық»',
          ),
        ],
      ),
    );
  }
}
