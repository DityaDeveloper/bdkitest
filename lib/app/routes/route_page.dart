import 'package:get/get.dart';

import '../../presentation/home/home_view.dart';
import '../../presentation/login/login_view.dart';
import '../../presentation/splashscreen/splashscreen_view.dart';
import 'route_name.dart';

class RoutesPage {
  static final init = RoutesName.splashScreen;
  static final routes = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreenView(),
    ),
    GetPage(
      name: RoutesName.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: RoutesName.home,
      page: () => const HomeView(),
    ),
  ];
  }