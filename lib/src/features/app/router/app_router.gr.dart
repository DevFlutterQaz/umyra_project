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
    TourRouter.name: (routeData) {
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
    NavigationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NavigationScreen(),
      );
    },
    LocationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LocationScreen(),
      );
    },
    UmraScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UmraScreen(),
      );
    },
    UmraDetailScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UmraDetailScreen(),
      );
    },
    UmraCourseScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UmraCourseScreen(),
      );
    },
    UmraLessanRoute.name: (routeData) {
      final args = routeData.argsAs<UmraLessanRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UmraLessan(
          key: args.key,
          index: args.index,
        ),
      );
    },
    QuranScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const QuranScreen(),
      );
    },
    CardDetailScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CardDetailScreen(),
      );
    },
    DugalarScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DugalarScreen(),
      );
    },
    ZikrScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ZikrScreen(),
      );
    },
    SuraScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SuraScreen(),
      );
    },
    NamesScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NamesScreen(),
      );
    },
    SalauatScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SalauatScreen(),
      );
    },
    SuraScreenDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SuraScreenDetail(),
      );
    },
    TourScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TourScreen(),
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
                RouteConfig(
                  NavigationScreenRoute.name,
                  path: 'navigation',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  LocationScreenRoute.name,
                  path: 'location',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  UmraScreenRoute.name,
                  path: 'umra',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  UmraDetailScreenRoute.name,
                  path: 'umradetail',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  UmraCourseScreenRoute.name,
                  path: 'umracourse',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  UmraLessanRoute.name,
                  path: 'umralesson',
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
                ),
                RouteConfig(
                  CardDetailScreenRoute.name,
                  path: 'carddetail',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  DugalarScreenRoute.name,
                  path: 'dugalarscreen',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  ZikrScreenRoute.name,
                  path: 'zikrscreen',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  SuraScreenRoute.name,
                  path: 'surascreen',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  NamesScreenRoute.name,
                  path: 'namesscreen',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  SalauatScreenRoute.name,
                  path: 'salauatscreen',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  SuraScreenDetailRoute.name,
                  path: 'surascreendetail',
                  parent: QuranRouter.name,
                ),
              ],
            ),
            RouteConfig(
              TourRouter.name,
              path: 'location',
              parent: CustomNavigationWidgetRoute.name,
              children: [
                RouteConfig(
                  TourScreenRoute.name,
                  path: '',
                  parent: TourRouter.name,
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
class TourRouter extends PageRouteInfo<void> {
  const TourRouter({List<PageRouteInfo>? children})
      : super(
          TourRouter.name,
          path: 'location',
          initialChildren: children,
        );

  static const String name = 'TourRouter';
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
/// [NavigationScreen]
class NavigationScreenRoute extends PageRouteInfo<void> {
  const NavigationScreenRoute()
      : super(
          NavigationScreenRoute.name,
          path: 'navigation',
        );

  static const String name = 'NavigationScreenRoute';
}

/// generated route for
/// [LocationScreen]
class LocationScreenRoute extends PageRouteInfo<void> {
  const LocationScreenRoute()
      : super(
          LocationScreenRoute.name,
          path: 'location',
        );

  static const String name = 'LocationScreenRoute';
}

/// generated route for
/// [UmraScreen]
class UmraScreenRoute extends PageRouteInfo<void> {
  const UmraScreenRoute()
      : super(
          UmraScreenRoute.name,
          path: 'umra',
        );

  static const String name = 'UmraScreenRoute';
}

/// generated route for
/// [UmraDetailScreen]
class UmraDetailScreenRoute extends PageRouteInfo<void> {
  const UmraDetailScreenRoute()
      : super(
          UmraDetailScreenRoute.name,
          path: 'umradetail',
        );

  static const String name = 'UmraDetailScreenRoute';
}

/// generated route for
/// [UmraCourseScreen]
class UmraCourseScreenRoute extends PageRouteInfo<void> {
  const UmraCourseScreenRoute()
      : super(
          UmraCourseScreenRoute.name,
          path: 'umracourse',
        );

  static const String name = 'UmraCourseScreenRoute';
}

/// generated route for
/// [UmraLessan]
class UmraLessanRoute extends PageRouteInfo<UmraLessanRouteArgs> {
  UmraLessanRoute({
    Key? key,
    required int index,
  }) : super(
          UmraLessanRoute.name,
          path: 'umralesson',
          args: UmraLessanRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'UmraLessanRoute';
}

class UmraLessanRouteArgs {
  const UmraLessanRouteArgs({
    this.key,
    required this.index,
  });

  final Key? key;

  final int index;

  @override
  String toString() {
    return 'UmraLessanRouteArgs{key: $key, index: $index}';
  }
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
/// [CardDetailScreen]
class CardDetailScreenRoute extends PageRouteInfo<void> {
  const CardDetailScreenRoute()
      : super(
          CardDetailScreenRoute.name,
          path: 'carddetail',
        );

  static const String name = 'CardDetailScreenRoute';
}

/// generated route for
/// [DugalarScreen]
class DugalarScreenRoute extends PageRouteInfo<void> {
  const DugalarScreenRoute()
      : super(
          DugalarScreenRoute.name,
          path: 'dugalarscreen',
        );

  static const String name = 'DugalarScreenRoute';
}

/// generated route for
/// [ZikrScreen]
class ZikrScreenRoute extends PageRouteInfo<void> {
  const ZikrScreenRoute()
      : super(
          ZikrScreenRoute.name,
          path: 'zikrscreen',
        );

  static const String name = 'ZikrScreenRoute';
}

/// generated route for
/// [SuraScreen]
class SuraScreenRoute extends PageRouteInfo<void> {
  const SuraScreenRoute()
      : super(
          SuraScreenRoute.name,
          path: 'surascreen',
        );

  static const String name = 'SuraScreenRoute';
}

/// generated route for
/// [NamesScreen]
class NamesScreenRoute extends PageRouteInfo<void> {
  const NamesScreenRoute()
      : super(
          NamesScreenRoute.name,
          path: 'namesscreen',
        );

  static const String name = 'NamesScreenRoute';
}

/// generated route for
/// [SalauatScreen]
class SalauatScreenRoute extends PageRouteInfo<void> {
  const SalauatScreenRoute()
      : super(
          SalauatScreenRoute.name,
          path: 'salauatscreen',
        );

  static const String name = 'SalauatScreenRoute';
}

/// generated route for
/// [SuraScreenDetail]
class SuraScreenDetailRoute extends PageRouteInfo<void> {
  const SuraScreenDetailRoute()
      : super(
          SuraScreenDetailRoute.name,
          path: 'surascreendetail',
        );

  static const String name = 'SuraScreenDetailRoute';
}

/// generated route for
/// [TourScreen]
class TourScreenRoute extends PageRouteInfo<void> {
  const TourScreenRoute()
      : super(
          TourScreenRoute.name,
          path: '',
        );

  static const String name = 'TourScreenRoute';
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
