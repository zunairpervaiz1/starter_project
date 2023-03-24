import 'package:flutter_starter_project/res/routes/routes_name.dart';
import 'package:flutter_starter_project/views/login_screen/login_screen.dart';
import 'package:get/route_manager.dart';

import '../../views/home_screen/home_screen.dart';
import '../../views/splash_screen/splash_screen.dart';

//AppRoutes class handles all the routes in this app
class AppRoutes {
  //this method returns all routes
  static appRoutes() => [
        GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
        GetPage(name: RouteName.loginScreen, page: () => const LoginScreen()),
        GetPage(name: RouteName.homeScreen, page: () => const HomeScreen()),
      ];
}
