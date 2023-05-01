import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_button.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/auth/widgets/auth_text_field.dart';
import 'package:umyra/src/features/screens/auth/widgets/confirm_private.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController nickNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late bool checkBoxValue = false;
  void statusCheckBox(value) {
    setState(
      () => checkBoxValue = value!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomAppBar(title: 'Регистрация'),
                const ColumnSpacer(6),
                Text(
                  'Қош келдіңіз',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const ColumnSpacer(2),
                CustomTextField(
                  placeholder: 'Name',
                  controller: nameController,
                ),
                const ColumnSpacer(2.4),
                CustomTextField(
                  placeholder: 'Last Name',
                  controller: lastNameController,
                ),
                const ColumnSpacer(2.4),
                CustomTextField(
                  placeholder: 'Nick Name',
                  controller: nickNameController,
                ),
                const ColumnSpacer(2.4),
                CustomTextField(
                  placeholder: 'Email',
                  controller: emailController,
                ),
                const ColumnSpacer(2.4),
                CustomTextField(
                  placeholder: 'Password',
                  controller: passwordController,
                ),
                const ColumnSpacer(4),
                CheckBox(
                    checkBoxValue: checkBoxValue, onChanged: statusCheckBox),
                const ColumnSpacer(2),
                CustomButton(
                  label: 'Кіру',
                  onPressed: () =>
                      context.router.push(const CustomNavigationWidgetRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
