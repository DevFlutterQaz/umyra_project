// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TasbihDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TasbihDetail(),
      );
    },
    CustomNavigationWidgetRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CustomNavigationWidget(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    QuranRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    LocationRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    BookScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BookScreen(),
      );
    },
    TasbihScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TasbihScreen(),
      );
    },
    NamazScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NamazScreen(),
      );
    },
    CalendarScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CalendarScreen(),
      );
    },
    QuranScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const QuranScreen(),
      );
    },
    LoactionScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoactionScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          TasbihDetailRoute.name,
          path: 'tasbihDetail',
        ),
        RouteConfig(
          CustomNavigationWidgetRoute.name,
          path: 'navigate',
          children: [
            RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: CustomNavigationWidgetRoute.name,
              children: [
                RouteConfig(
                  HomeScreenRoute.name,
                  path: '',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  BookScreenRoute.name,
                  path: 'book',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  TasbihScreenRoute.name,
                  path: 'tasbih',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  NamazScreenRoute.name,
                  path: 'namaz',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CalendarScreenRoute.name,
                  path: 'calendar',
                  parent: HomeRoute.name,
                ),
              ],
            ),
            RouteConfig(
              QuranRouter.name,
              path: 'quran',
              parent: CustomNavigationWidgetRoute.name,
              children: [
                RouteConfig(
                  QuranScreenRoute.name,
                  path: '',
                  parent: QuranRouter.name,
                )
              ],
            ),
            RouteConfig(
              LocationRouter.name,
              path: 'location',
              parent: CustomNavigationWidgetRoute.name,
              children: [
                RouteConfig(
                  LoactionScreenRoute.name,
                  path: '',
                  parent: LocationRouter.name,
                )
              ],
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: CustomNavigationWidgetRoute.name,
              children: [
                RouteConfig(
                  ProfileScreenRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [TasbihDetail]
class TasbihDetailRoute extends PageRouteInfo<void> {
  const TasbihDetailRoute()
      : super(
          TasbihDetailRoute.name,
          path: 'tasbihDetail',
        );

  static const String name = 'TasbihDetailRoute';
}

/// generated route for
/// [CustomNavigationWidget]
class CustomNavigationWidgetRoute extends PageRouteInfo<void> {
  const CustomNavigationWidgetRoute({List<PageRouteInfo>? children})
      : super(
          CustomNavigationWidgetRoute.name,
          path: 'navigate',
          initialChildren: children,
        );

  static const String name = 'CustomNavigationWidgetRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [EmptyRouterPage]
class QuranRouter extends PageRouteInfo<void> {
  const QuranRouter({List<PageRouteInfo>? children})
      : super(
          QuranRouter.name,
          path: 'quran',
          initialChildren: children,
        );

  static const String name = 'QuranRouter';
}

/// generated route for
/// [EmptyRouterPage]
class LocationRouter extends PageRouteInfo<void> {
  const LocationRouter({List<PageRouteInfo>? children})
      : super(
          LocationRouter.name,
          path: 'location',
          initialChildren: children,
        );

  static const String name = 'LocationRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [BookScreen]
class BookScreenRoute extends PageRouteInfo<void> {
  const BookScreenRoute()
      : super(
          BookScreenRoute.name,
          path: 'book',
        );

  static const String name = 'BookScreenRoute';
}

/// generated route for
/// [TasbihScreen]
class TasbihScreenRoute extends PageRouteInfo<void> {
  const TasbihScreenRoute()
      : super(
          TasbihScreenRoute.name,
          path: 'tasbih',
        );

  static const String name = 'TasbihScreenRoute';
}

/// generated route for
/// [NamazScreen]
class NamazScreenRoute extends PageRouteInfo<void> {
  const NamazScreenRoute()
      : super(
          NamazScreenRoute.name,
          path: 'namaz',
        );

  static const String name = 'NamazScreenRoute';
}

/// generated route for
/// [CalendarScreen]
class CalendarScreenRoute extends PageRouteInfo<void> {
  const CalendarScreenRoute()
      : super(
          CalendarScreenRoute.name,
          path: 'calendar',
        );

  static const String name = 'CalendarScreenRoute';
}

/// generated route for
/// [QuranScreen]
class QuranScreenRoute extends PageRouteInfo<void> {
  const QuranScreenRoute()
      : super(
          QuranScreenRoute.name,
          path: '',
        );

  static const String name = 'QuranScreenRoute';
}

/// generated route for
/// [LoactionScreen]
class LoactionScreenRoute extends PageRouteInfo<void> {
  const LoactionScreenRoute()
      : super(
          LoactionScreenRoute.name,
          path: '',
        );

  static const String name = 'LoactionScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}
