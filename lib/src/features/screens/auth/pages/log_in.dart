import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_button.dart';
import 'package:umyra/src/features/screens/auth/widgets/auth_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                const CustomAppBar(title: 'Авторизация'),
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
                  placeholder: 'Email',
                  controller: emailController,
                ),
                const ColumnSpacer(2.4),
                CustomTextField(
                  placeholder: 'Password',
                  controller: passwordController,
                ),
                const ColumnSpacer(4),
                CustomButton(
                  label: 'Кіру',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
