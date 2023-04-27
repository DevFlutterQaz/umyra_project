import 'package:flutter/material.dart';
import 'package:umyra/src/features/app/router/app_router.dart';

class UmyraApp extends StatelessWidget {
  UmyraApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(initialRoutes: [const CustomNavigationWidgetRoute()]),
    );
  }
}
