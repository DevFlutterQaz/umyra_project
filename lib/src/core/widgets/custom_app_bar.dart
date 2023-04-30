import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'arrow_button.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool alert;
  final Function()? onTap;
  const CustomAppBar({
    super.key,
    required this.title,
    this.alert = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                title,
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
    );
  }
}
