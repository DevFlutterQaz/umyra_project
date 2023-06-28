import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CityCountryColumn extends StatelessWidget {
  const CityCountryColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Almaty',
            style: TextStyle(color: Color(0xff00827F), fontSize: 18)),
        Text(
          'Kazakhstan',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.lightgrayColor5,
              ),
        ),
      ],
    );
  }
}
