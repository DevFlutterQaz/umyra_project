import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_button.dart';

import 'arrow_button.dart';
import 'custom_text_field.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  late bool visibility = true;
  late bool visibilityConfirm = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
            child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [
                Color(0xff14BCC2),
                Color(0xff14BCC2),
                Color(0xff025452),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    ArrowButton(
                      iconColor: AppColors.contentBlue,
                      onPressed: () => context.router.pop(),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Құпия сөзді қалпына келтіру',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                CustomTextField(
                  placeholder: 'Қолданыстағы құпия сөз',
                  obscureText: !visibility,
                  suffix: GestureDetector(
                    onTap: () => setState(() => visibility = !visibility),
                    child: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.contentBlue,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                CustomTextField(
                  placeholder: 'Құпия сөз',
                  obscureText: !visibility,
                  suffix: GestureDetector(
                    onTap: () => setState(() => visibility = !visibility),
                    child: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.contentBlue,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  placeholder: 'Құпия сөзді қайталау',
                  obscureText: !visibilityConfirm,
                  suffix: GestureDetector(
                    onTap: () =>
                        setState(() => visibilityConfirm = !visibilityConfirm),
                    child: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.contentBlue,
                    ),
                  ),
                ),
                const ColumnSpacer(25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CustomButton(
                    onPressed: () => context.router.replaceAll([]),
                    label: 'Сақтау',
                    color: Colors.white,
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   height: 30,
                //   child: const Text('Сақтау'),
                // ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
