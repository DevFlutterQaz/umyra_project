import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/dependencies/injection_container.dart';
import 'package:umyra/src/core/widgets/alert_widgets.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/core/widgets/custom_button.dart';
import 'package:umyra/src/features/app/router/app_router.dart';
import 'package:umyra/src/features/screens/auth/logic/bloc/auth_bloc.dart';
import 'package:umyra/src/features/screens/auth/widgets/auth_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: GestureDetector(
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
                    placeholder: 'User Name',
                    controller: userNameController,
                  ),
                  const ColumnSpacer(2.4),
                  CustomTextField(
                    placeholder: 'Password',
                    controller: passwordController,
                  ),
                  const ColumnSpacer(4),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state is LogInSuccess
                          ? context.router
                              .replaceAll([const CustomNavigationWidgetRoute()])
                          : null;
                      state is LogInFailed
                          ? ServiceWidgets.alertDialog(
                              context, 'Деректердің дұрыстығын тексеріңіз')
                          : null;
                    },
                    builder: (context, state) {
                      return CustomButton(
                        label: 'Кіру',
                        onPressed: () => context.read<AuthBloc>().add(LogInUser(
                            userName: userNameController.text,
                            password: passwordController.text)),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
