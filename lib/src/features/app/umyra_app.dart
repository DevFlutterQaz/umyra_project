import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/features/app/router/app_router.dart';

class UmyraApp extends StatelessWidget {
  UmyraApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        dividerColor: Colors.transparent,
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      // routerDelegate: _appRouter
      //     .delegate(initialRoutes: [const CustomNavigationWidgetRoute()]),
      debugShowCheckedModeBanner: false,
    );
  }
}
