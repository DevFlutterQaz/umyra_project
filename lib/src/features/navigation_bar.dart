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
        BookRouter(),
        LocationRouter(),
        ProfileRouter(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
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
            onTap: (index) => tabsRouter.setActiveIndex(index),
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
