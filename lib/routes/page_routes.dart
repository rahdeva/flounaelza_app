import 'package:flounaelza_app/feature/profile/profile_binding.dart';
import 'package:flounaelza_app/feature/profile/profile_page.dart';
import 'package:flounaelza_app/feature/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'package:flounaelza_app/feature/product/product_page.dart';
import 'package:flounaelza_app/feature/transaction/transaction_page.dart';
import 'package:flounaelza_app/feature/action/action_page.dart';
import 'package:flounaelza_app/feature/history/history_page.dart';
import '../feature/main/main_binding.dart';
import '../feature/main/main_page.dart';
import '/feature/loader/loading_page.dart';
import '/feature/login/login_binding.dart';
import '/feature/login/login_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.NAVTAB,
      page: () => const NavTabPage(),
      binding: NavTabBinding()
    ),
    GetPage(
      name: PageName.PRODUCT,
      page: () => const ProductPage(),
    ),
    GetPage(
      name: PageName.TRANSACTION,
      page: () => const TransactionPage(),
    ),
    GetPage(
      name: PageName.ACTION,
      page: () => const ActionPage(),
    ),
    GetPage(
      name: PageName.HISTORY,
      page: () => const HistoryPage(),
    ),
    GetPage(
      name: PageName.PROFILE,
      page: () => const ProfilePage(),
      binding: ProfileBinding()
    ),
  ];
}
