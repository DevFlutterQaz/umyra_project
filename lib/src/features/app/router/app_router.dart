import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/features/app/pages/start.dart';
import 'package:umyra/src/features/navigation_bar.dart';
import 'package:umyra/src/features/screens/auth/pages/log_in.dart';
import 'package:umyra/src/features/screens/auth/pages/register.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';
import 'package:umyra/src/features/screens/home/pages/calendar_page.dart';
import 'package:umyra/src/features/screens/home/pages/location_page.dart';
import 'package:umyra/src/features/screens/home/pages/namaz_page.dart';
import 'package:umyra/src/features/screens/home/pages/navigation_page.dart';
import 'package:umyra/src/features/screens/home/pages/talbiyah_page.dart';
import 'package:umyra/src/features/screens/home/pages/umra_course_page.dart';
import 'package:umyra/src/features/screens/home/pages/umra_detail_page.dart';
import 'package:umyra/src/features/screens/home/pages/umra_lesson.dart';
import 'package:umyra/src/features/screens/home/pages/umra_page.dart';
import 'package:umyra/src/features/screens/home/widgets/tawaf_page_view.dart';
import 'package:umyra/src/features/screens/profile/pages/bought_services_page.dart';
import 'package:umyra/src/features/screens/profile/pages/faq_page.dart';
import 'package:umyra/src/features/screens/profile/pages/language_page.dart';
import 'package:umyra/src/features/screens/profile/pages/message_note_page.dart';
import 'package:umyra/src/features/screens/profile/pages/my_cards_page.dart';
import 'package:umyra/src/features/screens/profile/pages/my_information_page.dart';
import 'package:umyra/src/features/screens/profile/pages/techncal_support_page.dart';
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
          AutoRoute(page: BoughtServicesScreen, path: 'boughtservices'),
          AutoRoute(page: ChangePasswordScreen, path: 'changepassword'),
          AutoRoute(page: FaqScreen, path: 'faqscreen'),
          AutoRoute(page: LanguageScreen, path: 'languagescreen'),
          AutoRoute(page: MyCardsScreen, path: 'mycardsscreen'),
          AutoRoute(page: MyInformationScreen, path: 'myinformationscreen'),
          AutoRoute(page: TechnicalSupportScreen, path: 'technicalsupport'),
          AutoRoute(page: MessageNoteScreen, path: 'messagenotescreen'),
          AutoRoute(page: NewPasswordScreen, path: 'newpasswordscreen'),
        ],
      ),
    ],
  ),
])
class AppRouter extends _$AppRouter {}
