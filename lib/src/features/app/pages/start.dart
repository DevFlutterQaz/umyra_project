import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/core/widgets/custom_button.dart';
import 'package:umyra/src/features/app/widgets/radio_button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  late int choiceLanguage;

  void changeLanguage(value) {
    setState(
      () => choiceLanguage = value!,
    );
  }

  @override
  void initState() {
    choiceLanguage = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ColumnSpacer(10),
              Text(
                'Umra&Hajj',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const ColumnSpacer(10),
              RadioButton(
                  value: 1,
                  txt: 'Русский язык',
                  groupValue: choiceLanguage,
                  onChanged: changeLanguage),
              const ColumnSpacer(3),
              RadioButton(
                  value: 2,
                  txt: 'Қазақ тілі',
                  groupValue: choiceLanguage,
                  onChanged: changeLanguage),
              const ColumnSpacer(3),
              RadioButton(
                value: 3,
                txt: 'English',
                groupValue: choiceLanguage,
                onChanged: changeLanguage,
              ),
              const Spacer(flex: 6),
              CustomButton(
                label: 'Регистрация',
                onPressed: () =>
                    context.router.push(const RegisterScreenRoute()),
              ),
              const ColumnSpacer(1.5),
              CustomButton(
                label: 'Войти как гость',
                onPressed: () =>
                    context.router.push(const CustomNavigationWidgetRoute()),
              ),
              const ColumnSpacer(1.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'У меня уже есть аккаунт',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const RowSpacer(1),
                  GestureDetector(
                    onTap: () => context.router.push(const LogInScreenRoute()),
                    child: Text(
                      'Войти',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.greenColor),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
