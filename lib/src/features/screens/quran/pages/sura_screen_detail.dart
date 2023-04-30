import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/arrow_button.dart';

class SuraScreenDetail extends StatefulWidget {
  const SuraScreenDetail({super.key});

  @override
  State<SuraScreenDetail> createState() => _SuraScreenDetailState();
}

class _SuraScreenDetailState extends State<SuraScreenDetail> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ArrowButton(
                        onPressed: () => context.router.pop(),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Сүрелер',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
