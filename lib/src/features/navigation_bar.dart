// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/features/app/router/app_router.dart';

class CustomNavigationWidget extends StatefulWidget {
  const CustomNavigationWidget({super.key});

  @override
  State<CustomNavigationWidget> createState() => _CustomNavigationWidgetState();
}

class _CustomNavigationWidgetState extends State<CustomNavigationWidget> {
  Future<void> _canPopSelf(TabsRouter tabsRouter) async {
    if (tabsRouter.current.router.canPopSelfOrChildren) {
      await tabsRouter.current.router.popTop().then(
            (value) async => _canPopSelf(tabsRouter),
          );
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        QuranRouter(),
        LocationRouter(),
        ProfileRouter(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        final currentIndex =
            AutoTabsRouter.of(context, watch: true).activeIndex;
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: Colors.red,
            onTap: (index) async => index == currentIndex
                ? await _canPopSelf(tabsRouter)
                : tabsRouter.setActiveIndex(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_history),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
