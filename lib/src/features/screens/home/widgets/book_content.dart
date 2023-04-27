import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';

class BookContentWidget extends StatelessWidget {
  const BookContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage(AppImages.book), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          AppSvgImages.heart,
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
        const ColumnSpacer(0.4),
        Text('Большая книга мудрости победителя',
            style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
