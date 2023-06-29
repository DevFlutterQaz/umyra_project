import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

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
                          color: AppColors.contentBlue,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
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
              const SizedBox(height: 10),
              // CustomButton(
              //   onPressed: () => context.router.replaceAll([const AuthPage()]),
              //   label: 'Дайын',
              // ),
            ],
          ),
        )),
      ),
    );
  }
}
