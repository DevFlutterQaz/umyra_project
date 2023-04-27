import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/features/navigation_bar.dart';
import 'package:umyra/src/features/screens/home/pages/calendar_page.dart';
import 'package:umyra/src/features/screens/home/pages/namaz_page.dart';
import 'package:umyra/src/features/screens/quran/pages/quran_page.dart';
import 'package:umyra/src/features/screens/home/pages/book_page.dart';
import 'package:umyra/src/features/screens/home/pages/home_page.dart';
import 'package:umyra/src/features/screens/home/pages/tasbih_detail.dart';
import 'package:umyra/src/features/screens/home/pages/tasbih_page.dart';
import 'package:umyra/src/features/screens/location/pages/location_page.dart';
import 'package:umyra/src/features/screens/profile/pages/profile_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(
    page: TasbihDetail,
    path: 'tasbihDetail',
  ),
  AutoRoute(
    page: CustomNavigationWidget,
    path: 'navigate',
    children: [
      AutoRoute(
        page: EmptyRouterPage,
        path: 'home',
        name: 'HomeRoute',
        children: [
          AutoRoute(
            page: HomeScreen,
            path: '',
          ),
          AutoRoute(
            page: BookScreen,
            path: 'book',
          ),
          AutoRoute(
            page: TasbihScreen,
            path: 'tasbih',
          ),
          AutoRoute(
            page: NamazScreen,
            path: 'namaz',
          ),
          AutoRoute(
            page: CalendarScreen,
            path: 'calendar',
          ),
        ],
      ),
      AutoRoute(
        page: EmptyRouterPage,
        path: 'quran',
        name: "QuranRouter",
        children: [
          AutoRoute(
            page: QuranScreen,
            path: '',
          ),
        ],
      ),
      AutoRoute(
        page: EmptyRouterPage,
        path: 'location',
        name: "LocationRouter",
        children: [
          AutoRoute(page: LoactionScreen, path: ''),
        ],
      ),
      AutoRoute(
        page: EmptyRouterPage,
        path: 'profile',
        name: "ProfileRouter",
        children: [
          AutoRoute(page: ProfileScreen, path: ''),
        ],
      ),
    ],
  ),
])
class AppRouter extends _$AppRouter {}
