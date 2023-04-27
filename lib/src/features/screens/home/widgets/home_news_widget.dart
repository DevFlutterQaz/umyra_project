import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';

class HomeNewsWidget extends StatelessWidget {
  const HomeNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 3.7,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                  image: AssetImage(AppImages.islam),
                  fit: BoxFit.cover),
            ),
          ),
          const ColumnSpacer(0.8),
          Text(
            'Меккеде қазақстандық жұп неке қидырды',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const ColumnSpacer(0.4),
          Text(
            '10.02.2023',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.lightgrayColor4),
          ),
        ],
      ),
    );
  }
}
