// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
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
        TourRouter(),
        ProfileRouter(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        final currentIndex =
            AutoTabsRouter.of(context, watch: true).activeIndex;
        return Scaffold(
          backgroundColor: AppColors.contentBlue3,
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              selectedItemColor: Colors.red,
              onTap: (index) async => index == currentIndex
                  ? await _canPopSelf(tabsRouter)
                  : tabsRouter.setActiveIndex(index),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.home,
                    height: 28,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.home,
                    color: AppColors.contentBlue,
                    height: 28,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.bookOpen,
                    color: Colors.grey,
                    height: 28,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.bookOpen,
                    color: AppColors.contentBlue,
                    height: 28,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.plane,
                    color: Colors.grey,
                    height: 28,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.plane,
                    color: AppColors.contentBlue,
                    height: 28,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.profile,
                    height: 28,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.profile,
                    color: AppColors.contentBlue,
                    height: 28,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
