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
    BookRouter.name: (routeData) {
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
                )
              ],
            ),
            RouteConfig(
              BookRouter.name,
              path: 'book',
              parent: CustomNavigationWidgetRoute.name,
              children: [
                RouteConfig(
                  BookScreenRoute.name,
                  path: '',
                  parent: BookRouter.name,
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
        )
      ];
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
class BookRouter extends PageRouteInfo<void> {
  const BookRouter({List<PageRouteInfo>? children})
      : super(
          BookRouter.name,
          path: 'book',
          initialChildren: children,
        );

  static const String name = 'BookRouter';
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
          path: '',
        );

  static const String name = 'BookScreenRoute';
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
