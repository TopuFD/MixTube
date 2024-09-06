import 'package:filture_tube/view/home_screen.dart';
import 'package:filture_tube/view/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute {
  static const splashScreen = "/splashScreen";
  static const homeScreen = "/homeScreen";

  static List<GetPage<dynamic>> getPages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
  ];
}
