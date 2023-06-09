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
    StartScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const StartScreen(),
      );
    },
    LogInScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LogInScreen(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    TasbihDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TasbihDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TasbihDetail(
          key: args.key,
          tasbihData: args.tasbihData,
        ),
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
      final args = routeData.argsAs<UmraDetailScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UmraDetailScreen(
          key: args.key,
          title: args.title,
          id: args.id,
        ),
      );
    },
    UmraCourseScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UmraCourseScreen(),
      );
    },
    CouseTeoreticalPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CouseTeoreticalPage(),
      );
    },
    CourseIhramDetailPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseIhramDetailPage(),
      );
    },
    CourseIhram2PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseIhram2Page(),
      );
    },
    CourseIhram3PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseIhram3Page(),
      );
    },
    CourseIhram4PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseIhram4Page(),
      );
    },
    CourseTalbiyahPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTalbiyahPage(),
      );
    },
    CourseTalbiah1PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTalbiah1Page(),
      );
    },
    CourseTalbiah2PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTalbiah2Page(),
      );
    },
    CourseTalbiah3PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTalbiah3Page(),
      );
    },
    CourseTalbiah4PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTalbiah4Page(),
      );
    },
    CouseHairPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CouseHairPage(),
      );
    },
    CourseHair1PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseHair1Page(),
      );
    },
    CouseTawafPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CouseTawafPage(),
      );
    },
    CourseTawaf1PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTawaf1Page(),
      );
    },
    CourseTawaf2PageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CourseTawaf2Page(),
      );
    },
    CourseTawaf3PageRoute.name: (routeData) {
      final args = routeData.argsAs<CourseTawaf3PageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CourseTawaf3Page(
          key: args.key,
          title: args.title,
          list: args.list,
          index: args.index,
          subTitle: args.subTitle,
        ),
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
    IhramScreenRoute.name: (routeData) {
      final args = routeData.argsAs<IhramScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: IhramScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    TawafScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TawafScreen(),
      );
    },
    TalbiyahScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TalbiyahScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TalbiyahScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    TawafPageViewScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TawafPageViewScreen(),
      );
    },
    PDFViewerPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PDFViewerPage(),
      );
    },
    QiblaScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const QiblaScreen(),
      );
    },
    MainCalendarPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainCalendarPage(),
      );
    },
    MainQuranScrennRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainQuranScrenn(),
      );
    },
    QuarnDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<QuarnDetailScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: QuarnDetailScreen(
          key: args.key,
          quranData: args.quranData,
          quranArabData: args.quranArabData,
        ),
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
    AboutProjectScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AboutProjectScreen(),
      );
    },
    ChangePasswordScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ChangePasswordScreen(),
      );
    },
    MyInformationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyInformationScreen(),
      );
    },
    NewPasswordScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NewPasswordScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          StartScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          LogInScreenRoute.name,
          path: 'login',
        ),
        RouteConfig(
          RegisterScreenRoute.name,
          path: 'register',
        ),
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
                  CouseTeoreticalPageRoute.name,
                  path: 'umracourseteoria',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseIhramDetailPageRoute.name,
                  path: 'umracoursedetail',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseIhram2PageRoute.name,
                  path: 'umracourse2',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseIhram3PageRoute.name,
                  path: 'umracourse3',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseIhram4PageRoute.name,
                  path: 'umracourse4',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTalbiyahPageRoute.name,
                  path: 'umracoursetalibiyah',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTalbiah1PageRoute.name,
                  path: 'umracoursetalibiyah1',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTalbiah2PageRoute.name,
                  path: 'umracoursetalibiyah2',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTalbiah3PageRoute.name,
                  path: 'umracoursetalibiyah3',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTalbiah4PageRoute.name,
                  path: 'umracoursetalibiyah4',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CouseHairPageRoute.name,
                  path: 'umracoursehair',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseHair1PageRoute.name,
                  path: 'umracoursehair1',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CouseTawafPageRoute.name,
                  path: 'umracoursetawaf',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTawaf1PageRoute.name,
                  path: 'umracoursetawaf1',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTawaf2PageRoute.name,
                  path: 'umracoursetawaf2',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  CourseTawaf3PageRoute.name,
                  path: 'umracoursetawaf3',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  UmraLessanRoute.name,
                  path: 'umralesson',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  IhramScreenRoute.name,
                  path: 'ihramscreen',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  TawafScreenRoute.name,
                  path: 'tawahscreen',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  TalbiyahScreenRoute.name,
                  path: 'talbiyahscren',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  TawafPageViewScreenRoute.name,
                  path: 'talbiyahscren',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  PDFViewerPageRoute.name,
                  path: 'pdf',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  QiblaScreenRoute.name,
                  path: 'qiblascreen',
                  parent: HomeRoute.name,
                ),
                RouteConfig(
                  MainCalendarPageRoute.name,
                  path: 'maincalendar',
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
                  MainQuranScrennRoute.name,
                  path: '',
                  parent: QuranRouter.name,
                ),
                RouteConfig(
                  QuarnDetailScreenRoute.name,
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
                ),
                RouteConfig(
                  AboutProjectScreenRoute.name,
                  path: 'aboutproject',
                  parent: ProfileRouter.name,
                ),
                RouteConfig(
                  ChangePasswordScreenRoute.name,
                  path: 'changepassword',
                  parent: ProfileRouter.name,
                ),
                RouteConfig(
                  MyInformationScreenRoute.name,
                  path: 'myinformationscreen',
                  parent: ProfileRouter.name,
                ),
                RouteConfig(
                  NewPasswordScreenRoute.name,
                  path: 'newpasswordscreen',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [StartScreen]
class StartScreenRoute extends PageRouteInfo<void> {
  const StartScreenRoute()
      : super(
          StartScreenRoute.name,
          path: '/',
        );

  static const String name = 'StartScreenRoute';
}

/// generated route for
/// [LogInScreen]
class LogInScreenRoute extends PageRouteInfo<void> {
  const LogInScreenRoute()
      : super(
          LogInScreenRoute.name,
          path: 'login',
        );

  static const String name = 'LogInScreenRoute';
}

/// generated route for
/// [RegisterScreen]
class RegisterScreenRoute extends PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(
          RegisterScreenRoute.name,
          path: 'register',
        );

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [TasbihDetail]
class TasbihDetailRoute extends PageRouteInfo<TasbihDetailRouteArgs> {
  TasbihDetailRoute({
    Key? key,
    required TasbihModel tasbihData,
  }) : super(
          TasbihDetailRoute.name,
          path: 'tasbihDetail',
          args: TasbihDetailRouteArgs(
            key: key,
            tasbihData: tasbihData,
          ),
        );

  static const String name = 'TasbihDetailRoute';
}

class TasbihDetailRouteArgs {
  const TasbihDetailRouteArgs({
    this.key,
    required this.tasbihData,
  });

  final Key? key;

  final TasbihModel tasbihData;

  @override
  String toString() {
    return 'TasbihDetailRouteArgs{key: $key, tasbihData: $tasbihData}';
  }
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
class UmraDetailScreenRoute extends PageRouteInfo<UmraDetailScreenRouteArgs> {
  UmraDetailScreenRoute({
    Key? key,
    required String title,
    required String id,
  }) : super(
          UmraDetailScreenRoute.name,
          path: 'umradetail',
          args: UmraDetailScreenRouteArgs(
            key: key,
            title: title,
            id: id,
          ),
        );

  static const String name = 'UmraDetailScreenRoute';
}

class UmraDetailScreenRouteArgs {
  const UmraDetailScreenRouteArgs({
    this.key,
    required this.title,
    required this.id,
  });

  final Key? key;

  final String title;

  final String id;

  @override
  String toString() {
    return 'UmraDetailScreenRouteArgs{key: $key, title: $title, id: $id}';
  }
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
/// [CouseTeoreticalPage]
class CouseTeoreticalPageRoute extends PageRouteInfo<void> {
  const CouseTeoreticalPageRoute()
      : super(
          CouseTeoreticalPageRoute.name,
          path: 'umracourseteoria',
        );

  static const String name = 'CouseTeoreticalPageRoute';
}

/// generated route for
/// [CourseIhramDetailPage]
class CourseIhramDetailPageRoute extends PageRouteInfo<void> {
  const CourseIhramDetailPageRoute()
      : super(
          CourseIhramDetailPageRoute.name,
          path: 'umracoursedetail',
        );

  static const String name = 'CourseIhramDetailPageRoute';
}

/// generated route for
/// [CourseIhram2Page]
class CourseIhram2PageRoute extends PageRouteInfo<void> {
  const CourseIhram2PageRoute()
      : super(
          CourseIhram2PageRoute.name,
          path: 'umracourse2',
        );

  static const String name = 'CourseIhram2PageRoute';
}

/// generated route for
/// [CourseIhram3Page]
class CourseIhram3PageRoute extends PageRouteInfo<void> {
  const CourseIhram3PageRoute()
      : super(
          CourseIhram3PageRoute.name,
          path: 'umracourse3',
        );

  static const String name = 'CourseIhram3PageRoute';
}

/// generated route for
/// [CourseIhram4Page]
class CourseIhram4PageRoute extends PageRouteInfo<void> {
  const CourseIhram4PageRoute()
      : super(
          CourseIhram4PageRoute.name,
          path: 'umracourse4',
        );

  static const String name = 'CourseIhram4PageRoute';
}

/// generated route for
/// [CourseTalbiyahPage]
class CourseTalbiyahPageRoute extends PageRouteInfo<void> {
  const CourseTalbiyahPageRoute()
      : super(
          CourseTalbiyahPageRoute.name,
          path: 'umracoursetalibiyah',
        );

  static const String name = 'CourseTalbiyahPageRoute';
}

/// generated route for
/// [CourseTalbiah1Page]
class CourseTalbiah1PageRoute extends PageRouteInfo<void> {
  const CourseTalbiah1PageRoute()
      : super(
          CourseTalbiah1PageRoute.name,
          path: 'umracoursetalibiyah1',
        );

  static const String name = 'CourseTalbiah1PageRoute';
}

/// generated route for
/// [CourseTalbiah2Page]
class CourseTalbiah2PageRoute extends PageRouteInfo<void> {
  const CourseTalbiah2PageRoute()
      : super(
          CourseTalbiah2PageRoute.name,
          path: 'umracoursetalibiyah2',
        );

  static const String name = 'CourseTalbiah2PageRoute';
}

/// generated route for
/// [CourseTalbiah3Page]
class CourseTalbiah3PageRoute extends PageRouteInfo<void> {
  const CourseTalbiah3PageRoute()
      : super(
          CourseTalbiah3PageRoute.name,
          path: 'umracoursetalibiyah3',
        );

  static const String name = 'CourseTalbiah3PageRoute';
}

/// generated route for
/// [CourseTalbiah4Page]
class CourseTalbiah4PageRoute extends PageRouteInfo<void> {
  const CourseTalbiah4PageRoute()
      : super(
          CourseTalbiah4PageRoute.name,
          path: 'umracoursetalibiyah4',
        );

  static const String name = 'CourseTalbiah4PageRoute';
}

/// generated route for
/// [CouseHairPage]
class CouseHairPageRoute extends PageRouteInfo<void> {
  const CouseHairPageRoute()
      : super(
          CouseHairPageRoute.name,
          path: 'umracoursehair',
        );

  static const String name = 'CouseHairPageRoute';
}

/// generated route for
/// [CourseHair1Page]
class CourseHair1PageRoute extends PageRouteInfo<void> {
  const CourseHair1PageRoute()
      : super(
          CourseHair1PageRoute.name,
          path: 'umracoursehair1',
        );

  static const String name = 'CourseHair1PageRoute';
}

/// generated route for
/// [CouseTawafPage]
class CouseTawafPageRoute extends PageRouteInfo<void> {
  const CouseTawafPageRoute()
      : super(
          CouseTawafPageRoute.name,
          path: 'umracoursetawaf',
        );

  static const String name = 'CouseTawafPageRoute';
}

/// generated route for
/// [CourseTawaf1Page]
class CourseTawaf1PageRoute extends PageRouteInfo<void> {
  const CourseTawaf1PageRoute()
      : super(
          CourseTawaf1PageRoute.name,
          path: 'umracoursetawaf1',
        );

  static const String name = 'CourseTawaf1PageRoute';
}

/// generated route for
/// [CourseTawaf2Page]
class CourseTawaf2PageRoute extends PageRouteInfo<void> {
  const CourseTawaf2PageRoute()
      : super(
          CourseTawaf2PageRoute.name,
          path: 'umracoursetawaf2',
        );

  static const String name = 'CourseTawaf2PageRoute';
}

/// generated route for
/// [CourseTawaf3Page]
class CourseTawaf3PageRoute extends PageRouteInfo<CourseTawaf3PageRouteArgs> {
  CourseTawaf3PageRoute({
    Key? key,
    required String title,
    required List<dynamic> list,
    required int index,
    required String subTitle,
  }) : super(
          CourseTawaf3PageRoute.name,
          path: 'umracoursetawaf3',
          args: CourseTawaf3PageRouteArgs(
            key: key,
            title: title,
            list: list,
            index: index,
            subTitle: subTitle,
          ),
        );

  static const String name = 'CourseTawaf3PageRoute';
}

class CourseTawaf3PageRouteArgs {
  const CourseTawaf3PageRouteArgs({
    this.key,
    required this.title,
    required this.list,
    required this.index,
    required this.subTitle,
  });

  final Key? key;

  final String title;

  final List<dynamic> list;

  final int index;

  final String subTitle;

  @override
  String toString() {
    return 'CourseTawaf3PageRouteArgs{key: $key, title: $title, list: $list, index: $index, subTitle: $subTitle}';
  }
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
/// [IhramScreen]
class IhramScreenRoute extends PageRouteInfo<IhramScreenRouteArgs> {
  IhramScreenRoute({
    Key? key,
    required int? index,
  }) : super(
          IhramScreenRoute.name,
          path: 'ihramscreen',
          args: IhramScreenRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'IhramScreenRoute';
}

class IhramScreenRouteArgs {
  const IhramScreenRouteArgs({
    this.key,
    required this.index,
  });

  final Key? key;

  final int? index;

  @override
  String toString() {
    return 'IhramScreenRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [TawafScreen]
class TawafScreenRoute extends PageRouteInfo<void> {
  const TawafScreenRoute()
      : super(
          TawafScreenRoute.name,
          path: 'tawahscreen',
        );

  static const String name = 'TawafScreenRoute';
}

/// generated route for
/// [TalbiyahScreen]
class TalbiyahScreenRoute extends PageRouteInfo<TalbiyahScreenRouteArgs> {
  TalbiyahScreenRoute({
    Key? key,
    required int? index,
  }) : super(
          TalbiyahScreenRoute.name,
          path: 'talbiyahscren',
          args: TalbiyahScreenRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'TalbiyahScreenRoute';
}

class TalbiyahScreenRouteArgs {
  const TalbiyahScreenRouteArgs({
    this.key,
    required this.index,
  });

  final Key? key;

  final int? index;

  @override
  String toString() {
    return 'TalbiyahScreenRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [TawafPageViewScreen]
class TawafPageViewScreenRoute extends PageRouteInfo<void> {
  const TawafPageViewScreenRoute()
      : super(
          TawafPageViewScreenRoute.name,
          path: 'talbiyahscren',
        );

  static const String name = 'TawafPageViewScreenRoute';
}

/// generated route for
/// [PDFViewerPage]
class PDFViewerPageRoute extends PageRouteInfo<void> {
  const PDFViewerPageRoute()
      : super(
          PDFViewerPageRoute.name,
          path: 'pdf',
        );

  static const String name = 'PDFViewerPageRoute';
}

/// generated route for
/// [QiblaScreen]
class QiblaScreenRoute extends PageRouteInfo<void> {
  const QiblaScreenRoute()
      : super(
          QiblaScreenRoute.name,
          path: 'qiblascreen',
        );

  static const String name = 'QiblaScreenRoute';
}

/// generated route for
/// [MainCalendarPage]
class MainCalendarPageRoute extends PageRouteInfo<void> {
  const MainCalendarPageRoute()
      : super(
          MainCalendarPageRoute.name,
          path: 'maincalendar',
        );

  static const String name = 'MainCalendarPageRoute';
}

/// generated route for
/// [MainQuranScrenn]
class MainQuranScrennRoute extends PageRouteInfo<void> {
  const MainQuranScrennRoute()
      : super(
          MainQuranScrennRoute.name,
          path: '',
        );

  static const String name = 'MainQuranScrennRoute';
}

/// generated route for
/// [QuarnDetailScreen]
class QuarnDetailScreenRoute extends PageRouteInfo<QuarnDetailScreenRouteArgs> {
  QuarnDetailScreenRoute({
    Key? key,
    required Surah quranData,
    required SurahArab quranArabData,
  }) : super(
          QuarnDetailScreenRoute.name,
          path: '',
          args: QuarnDetailScreenRouteArgs(
            key: key,
            quranData: quranData,
            quranArabData: quranArabData,
          ),
        );

  static const String name = 'QuarnDetailScreenRoute';
}

class QuarnDetailScreenRouteArgs {
  const QuarnDetailScreenRouteArgs({
    this.key,
    required this.quranData,
    required this.quranArabData,
  });

  final Key? key;

  final Surah quranData;

  final SurahArab quranArabData;

  @override
  String toString() {
    return 'QuarnDetailScreenRouteArgs{key: $key, quranData: $quranData, quranArabData: $quranArabData}';
  }
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

/// generated route for
/// [AboutProjectScreen]
class AboutProjectScreenRoute extends PageRouteInfo<void> {
  const AboutProjectScreenRoute()
      : super(
          AboutProjectScreenRoute.name,
          path: 'aboutproject',
        );

  static const String name = 'AboutProjectScreenRoute';
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordScreenRoute extends PageRouteInfo<void> {
  const ChangePasswordScreenRoute()
      : super(
          ChangePasswordScreenRoute.name,
          path: 'changepassword',
        );

  static const String name = 'ChangePasswordScreenRoute';
}

/// generated route for
/// [MyInformationScreen]
class MyInformationScreenRoute extends PageRouteInfo<void> {
  const MyInformationScreenRoute()
      : super(
          MyInformationScreenRoute.name,
          path: 'myinformationscreen',
        );

  static const String name = 'MyInformationScreenRoute';
}

/// generated route for
/// [NewPasswordScreen]
class NewPasswordScreenRoute extends PageRouteInfo<void> {
  const NewPasswordScreenRoute()
      : super(
          NewPasswordScreenRoute.name,
          path: 'newpasswordscreen',
        );

  static const String name = 'NewPasswordScreenRoute';
}
