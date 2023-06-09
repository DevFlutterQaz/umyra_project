import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/features/app/pages/start.dart';
import 'package:umyra/src/features/navigation_bar.dart';
import 'package:umyra/src/features/screens/auth/pages/log_in.dart';
import 'package:umyra/src/features/screens/auth/pages/register.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';
import 'package:umyra/src/features/screens/home/pages/calendar_page.dart';
import 'package:umyra/src/features/screens/home/pages/course/hair/hair1.dart';
import 'package:umyra/src/features/screens/home/pages/course/hair/hair_main.dart';
import 'package:umyra/src/features/screens/home/pages/course/ihram/course_ihram.dart';
import 'package:umyra/src/features/screens/home/pages/course/ihram/course_ihram2.dart';
import 'package:umyra/src/features/screens/home/pages/course/ihram/course_ihram3.dart';
import 'package:umyra/src/features/screens/home/pages/course/ihram/course_ihram4.dart';
import 'package:umyra/src/features/screens/home/pages/course/ihram/course_ihram_detail.dart';
import 'package:umyra/src/features/screens/home/pages/course/talbiyah/talbiah1.dart';
import 'package:umyra/src/features/screens/home/pages/course/talbiyah/talbiah2.dart';
import 'package:umyra/src/features/screens/home/pages/course/talbiyah/talbiah3.dart';
import 'package:umyra/src/features/screens/home/pages/course/talbiyah/talbiah4.dart';
import 'package:umyra/src/features/screens/home/pages/course/talbiyah/talbiah_main.dart';
import 'package:umyra/src/features/screens/home/pages/course/tawaf/tawaf2.dart';
import 'package:umyra/src/features/screens/home/pages/course/tawaf/tawaf3.dart';
import 'package:umyra/src/features/screens/home/pages/course/tawaf/tawaf_main.dart';
import 'package:umyra/src/features/screens/home/pages/course/tawaf/tawag1.dart';
import 'package:umyra/src/features/screens/home/pages/location_page.dart';
import 'package:umyra/src/features/screens/home/pages/main_calendar.dart';
import 'package:umyra/src/features/screens/home/pages/namaz_page.dart';
import 'package:umyra/src/features/screens/home/pages/navigation_page.dart';
import 'package:umyra/src/features/screens/home/pages/pdf_viewer_page%20copy.dart';
import 'package:umyra/src/features/screens/home/pages/qibla_screen.dart';
import 'package:umyra/src/features/screens/home/pages/talbiyah_page.dart';
import 'package:umyra/src/features/screens/home/pages/umra_course_page.dart';
import 'package:umyra/src/features/screens/home/pages/umra_detail_page.dart';
import 'package:umyra/src/features/screens/home/pages/umra_lesson.dart';
import 'package:umyra/src/features/screens/home/pages/umra_page.dart';
import 'package:umyra/src/features/screens/home/widgets/tawaf_page_view.dart';

import 'package:umyra/src/features/screens/profile/pages/my_information_page.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_arab_quran.dart';
import 'package:umyra/src/features/screens/quran/logic/data/model/model_quran.dart';
import 'package:umyra/src/features/screens/quran/pages/dugalar_screen.dart';
import 'package:umyra/src/features/screens/quran/pages/main_quran.dart';
import 'package:umyra/src/features/screens/quran/pages/names_screen.dart';
import 'package:umyra/src/features/screens/quran/pages/quran_detail.dart';
import 'package:umyra/src/features/screens/home/pages/book_page.dart';
import 'package:umyra/src/features/screens/home/pages/home_page.dart';
import 'package:umyra/src/features/screens/home/pages/tasbih_detail.dart';
import 'package:umyra/src/features/screens/home/pages/tasbih_page.dart';
import 'package:umyra/src/features/screens/quran/pages/salauat_screen.dart';
import 'package:umyra/src/features/screens/quran/pages/sura_screen.dart';
import 'package:umyra/src/features/screens/quran/pages/sura_screen_detail.dart';
import 'package:umyra/src/features/screens/quran/pages/zikr_screen.dart';
import 'package:umyra/src/features/screens/tour/pages/tour_page.dart';
import 'package:umyra/src/features/screens/profile/pages/profile_page.dart';

import 'package:umyra/src/core/widgets/new_password_screen.dart';
import 'package:umyra/src/features/screens/profile/pages/about_project_page.dart';
import 'package:umyra/src/features/screens/profile/pages/change_password.dart';
import 'package:umyra/src/features/screens/quran/pages/card_detail_page.dart';

import '../../screens/home/pages/ihram_page.dart';
import '../../screens/home/pages/tawaf_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(
    page: StartScreen,
    path: '/',
    initial: true,
  ),
  AutoRoute(
    page: LogInScreen,
    path: 'login',
  ),
  AutoRoute(
    page: RegisterScreen,
    path: 'register',
  ),
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
          AutoRoute(
            page: NavigationScreen,
            path: 'navigation',
          ),
          AutoRoute(
            page: LocationScreen,
            path: 'location',
          ),
          AutoRoute(
            page: UmraScreen,
            path: 'umra',
          ),
          AutoRoute(
            page: UmraDetailScreen,
            path: 'umradetail',
          ),
          AutoRoute(
            page: UmraCourseScreen,
            path: 'umracourse',
          ),
          AutoRoute(
            page: CouseTeoreticalPage,
            path: 'umracourseteoria',
          ),
          AutoRoute(
            page: CourseIhramDetailPage,
            path: 'umracoursedetail',
          ),
          AutoRoute(
            page: CourseIhram2Page,
            path: 'umracourse2',
          ),
          AutoRoute(
            page: CourseIhram3Page,
            path: 'umracourse3',
          ),
          AutoRoute(
            page: CourseIhram4Page,
            path: 'umracourse4',
          ),
          AutoRoute(
            page: CourseTalbiyahPage,
            path: 'umracoursetalibiyah',
          ),
          AutoRoute(
            page: CourseTalbiah1Page,
            path: 'umracoursetalibiyah1',
          ),
          AutoRoute(
            page: CourseTalbiah2Page,
            path: 'umracoursetalibiyah2',
          ),
          AutoRoute(
            page: CourseTalbiah3Page,
            path: 'umracoursetalibiyah3',
          ),
          AutoRoute(
            page: CourseTalbiah4Page,
            path: 'umracoursetalibiyah4',
          ),
          AutoRoute(
            page: CouseHairPage,
            path: 'umracoursehair',
          ),
          AutoRoute(
            page: CourseHair1Page,
            path: 'umracoursehair1',
          ),
          AutoRoute(
            page: CouseTawafPage,
            path: 'umracoursetawaf',
          ),
          AutoRoute(
            page: CourseTawaf1Page,
            path: 'umracoursetawaf1',
          ),
          AutoRoute(
            page: CourseTawaf2Page,
            path: 'umracoursetawaf2',
          ),
          AutoRoute(
            page: CourseTawaf3Page,
            path: 'umracoursetawaf3',
          ),
          AutoRoute(
            page: UmraLessan,
            path: 'umralesson',
          ),
          AutoRoute(
            page: IhramScreen,
            path: 'ihramscreen',
          ),
          AutoRoute(
            page: TawafScreen,
            path: 'tawahscreen',
          ),
          AutoRoute(
            page: TalbiyahScreen,
            path: 'talbiyahscren',
          ),
          AutoRoute(
            page: TawafPageViewScreen,
            path: 'talbiyahscren',
          ),
          AutoRoute(
            page: PDFViewerPage,
            path: 'pdf',
          ),
          AutoRoute(
            page: QiblaScreen,
            path: 'qiblascreen',
          ),
          AutoRoute(
            page: MainCalendarPage,
            path: 'maincalendar',
          ),
        ],
      ),
      AutoRoute(
        page: EmptyRouterPage,
        path: 'quran',
        name: "QuranRouter",
        children: [
          AutoRoute(
            page: MainQuranScrenn,
            path: '',
          ),
          AutoRoute(
            page: QuarnDetailScreen,
            path: '',
          ),
          AutoRoute(
            page: CardDetailScreen,
            path: 'carddetail',
          ),
          AutoRoute(
            page: DugalarScreen,
            path: 'dugalarscreen',
          ),
          AutoRoute(
            page: ZikrScreen,
            path: 'zikrscreen',
          ),
          AutoRoute(
            page: SuraScreen,
            path: 'surascreen',
          ),
          AutoRoute(
            page: NamesScreen,
            path: 'namesscreen',
          ),
          AutoRoute(
            page: SalauatScreen,
            path: 'salauatscreen',
          ),
          AutoRoute(
            page: SuraScreenDetail,
            path: 'surascreendetail',
          ),
        ],
      ),
      AutoRoute(
        page: EmptyRouterPage,
        path: 'location',
        name: "TourRouter",
        children: [
          AutoRoute(page: TourScreen, path: ''),
        ],
      ),
      AutoRoute(
        page: EmptyRouterPage,
        path: 'profile',
        name: "ProfileRouter",
        children: [
          AutoRoute(page: ProfileScreen, path: ''),
          AutoRoute(page: AboutProjectScreen, path: 'aboutproject'),
          AutoRoute(page: ChangePasswordScreen, path: 'changepassword'),
          AutoRoute(page: MyInformationScreen, path: 'myinformationscreen'),
          AutoRoute(page: NewPasswordScreen, path: 'newpasswordscreen'),
        ],
      ),
    ],
  ),
])
class AppRouter extends _$AppRouter {}
