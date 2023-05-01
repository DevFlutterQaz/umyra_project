import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/resources.dart';

class OneCardWidget extends StatefulWidget {
  const OneCardWidget({super.key});

  @override
  State<OneCardWidget> createState() => _OneCardWidgetState();
}

class _OneCardWidgetState extends State<OneCardWidget> {
  late int check = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.whiteColor),
        child: ListTile(
          trailing: Transform.scale(
            scale: 1.2,
            child: Radio(
              splashRadius: Checkbox.width,
              value: 0,
              groupValue: check,
              onChanged: (value) {
                print(check);
                setState(() {
                  check = value!;
                });
              },
            ),
          ),
          subtitle: const Text('Карта'),
          title: const Text('6918 **** **89'),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              color: const Color(0xffF6F7FF),
              child: IconButton(
                onPressed: null,
                icon: SvgPicture.asset(AppSvgImages.paymentCard),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
