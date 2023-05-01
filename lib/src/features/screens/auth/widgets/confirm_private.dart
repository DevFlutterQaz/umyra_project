import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({
    Key? key,
    required this.checkBoxValue,
    required this.onChanged,
  }) : super(key: key);

  final bool checkBoxValue;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: checkBoxValue,
            onChanged: onChanged,
            side: const BorderSide(color: AppColors.grayColor),
            activeColor: AppColors.greenColor,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(
            maxLines: 2,
            softWrap: true,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: 'Пайдалану шарттарымен келісу және ',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // LaunchInBrowserUtil.launchUrl(
                      //   /// Policy Link
                      //   '',
                      // );
                    },
                  text: 'Құпиялылық саясаты',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff3175ED),
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
